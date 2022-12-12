//
//  MatchUpFormatParser.swift
//  Tennis
//
//  Created by Pranav Suri on 6/12/22.
//

import Darwin
import UIKit

var SET = "SET"
var NOAD = "NOAD"
var TIMED = "timed"
var FINAL = "final"
var NORMAL = "normal"

enum SetTypes: String {
    case S
    case F
}

enum SetOrTimed: String, CaseIterable {
    case set
    case timed

    var code: String {
        switch self {
        case .set: return "SET"
        case .timed: return "T"
        }
    }

    static func getSetOrTimed(setOrTimed: String) -> SetOrTimed {
        switch setOrTimed {
        case "SET": return .set
        case "T": return .timed
        default: return .set
        }
    }
}

extension SetOrTimed: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = SetOrTimed.getSetOrTimed(setOrTimed: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}

class MatchUpFormat: Codable, Equatable {
    internal init(setOrTimed: SetOrTimed? = nil, bestOf: Int? = nil, setFormat: SetFormat? = nil) {
        self.setOrTimed = setOrTimed
        self.bestOf = bestOf
        self.setFormat = setFormat
    }

    var setOrTimed: SetOrTimed?
    var bestOf: Int?
    var setFormat: SetFormat?

    enum CodingKeys: String, CodingKey {
        case setOrTimed
        case bestOf
        case setFormat
    }

    static func == (lhs: MatchUpFormat, rhs: MatchUpFormat) -> Bool {
        return lhs.setOrTimed == rhs.setOrTimed &&
            lhs.bestOf == rhs.bestOf &&
            lhs.setFormat == rhs.setFormat
    }
}

class SetFormat: Codable, Equatable {
    internal init(timed: Bool? = nil, minutes: Bool? = nil, tiebreakSet: TiebreakSet? = nil, setTo: Int? = nil, noAd: Bool? = nil, tiebreakAt: Bool? = nil, noTiebreak: Bool? = nil) {
        self.timed = timed
        self.minutes = minutes
        self.tiebreakSet = tiebreakSet
        self.setTo = setTo
        self.noAd = noAd
        self.tiebreakAt = tiebreakAt
        self.noTiebreak = noTiebreak
    }

    var timed: Bool?
    var minutes: Bool?
    var tiebreakSet: TiebreakSet?
    var setTo: Int?
    var noAd: Bool?
    var tiebreakAt: Bool?
    var noTiebreak: Bool?

    enum CodingKeys: String, CodingKey {
        case timed
        case minutes
        case tiebreakSet
        case setTo
        case noAd = "NoAD"
        case tiebreakAt
        case noTiebreak
    }

    static func == (lhs: SetFormat, rhs: SetFormat) -> Bool {
        return lhs.timed == rhs.timed &&
            lhs.minutes == rhs.minutes &&
            lhs.tiebreakSet == rhs.tiebreakSet &&
            lhs.setTo == rhs.setTo &&
            lhs.noAd == rhs.noAd &&
            lhs.tiebreakAt == rhs.tiebreakAt &&
            lhs.noTiebreak == rhs.noTiebreak
    }
}

class TiebreakSet: Codable, Equatable {
    internal init(tiebreakTo: Int? = nil, noAd: Bool? = nil) {
        self.tiebreakTo = tiebreakTo
        self.noAd = noAd
    }

    var tiebreakTo: Int?
    var noAd: Bool?

    enum CodingKeys: String, CodingKey {
        case tiebreakTo
        case noAd = "NoAD"
    }

    static func == (lhs: TiebreakSet, rhs: TiebreakSet) -> Bool {
        return lhs.tiebreakTo == rhs.tiebreakTo &&
            lhs.noAd == rhs.noAd
    }
}

class MatchUpFormatCodeParser {
    func formJSONString(dict: [String: Any]) -> String? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
            return String(data: jsonData,
                          encoding: .ascii)
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }

    func parse(matchUpFormatCode: String) -> [String: Any]? {
        if matchUpFormatCode.starts(with: "T") {
            if let setFormat = parseTimedSet(formatstring: matchUpFormatCode) {
                return ["bestOf": "1", "setFormat": setFormat]
            }
        } else if matchUpFormatCode.starts(with: SET) {
            if let result = setsMatch(formatstring: matchUpFormatCode) {
                return result
            }
        }
        return nil
    }

    func setsMatch(formatstring: String) -> [String: Any]? {
        let parts = formatstring.split(separator: "-").map { String($0) }
        let bestOf = getNumber(formatstring: parts[0].replacingOccurrences(of: SET, with: ""))
        let setFormat = parseSetFormat(formatstring: parts[1])
        let finalSetFormat = parts.count > 2 ? parseSetFormat(formatstring: parts[2]) : nil
        let validBestOf = bestOf != nil && bestOf! < 6
        let validFinalSet = parts.count < 3 || finalSetFormat != nil
        let validSetsFormat = setFormat != nil

        if !(validBestOf && validSetsFormat && validFinalSet) {
            return nil
        }

        var result: [String: Any] = ["bestOf": String(bestOf!), "setFormat": setFormat!]
        if finalSetFormat != nil {
            result["finalSetFormat"] = finalSetFormat!
        }
        return result
    }

    func matches(for regex: String, in text: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: text,
                                        range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }

    func parseSetFormat(formatstring: String) -> [String: Any]? {
        if formatstring[formatstring.index(after: formatstring.startIndex)] == ":" {
            let parts = formatstring.split(separator: ":").map { String($0) }
            let setType: SetTypes? = SetTypes(rawValue: parts[0])
            let setFormatString = parts[1]
            if setType != nil && !setFormatString.isEmpty {
                if setFormatString.starts(with: "TB") {
                    if let tieBreakSet = parseTiebreakFormat(formatstring: setFormatString) {
                        return ["tiebreakSet": tieBreakSet]
                    } else {
                        return nil
                    }
                }
                if setFormatString.starts(with: "T") {
                    if let timedSetFormat = parseTimedSet(formatstring: setFormatString) {
                        return timedSetFormat
                    } else {
                        return nil
                    }
                }
                var computingString = formatstring
                computingString = String(computingString.split(separator: ":")[1])
                let NoAD = isNoAD(formatstring: computingString)
                computingString = matches(for: "([0-9]+)", in: computingString)[0]
                let setTo = getNumber(formatstring: computingString) != nil ? computingString : nil
                let tiebreakAtValue = parseTiebreakAt(setFormatString: setFormatString)
                let validTiebreakAt = tiebreakAtValue != nil
                let tiebreakAt = validTiebreakAt ? tiebreakAtValue : setTo
                let tiebreakFormat = setFormatString.contains("/") ? parseTiebreakFormat(formatstring: setFormatString.split(separator: "/").map { String($0) }[1]) : nil
                var result: [String: Any] = ["setTo": setTo as Any]
                if NoAD {
                    result["NoAD"] = String(true)
                }
                if tiebreakFormat != nil {
                    result["tiebreakFormat"] = tiebreakFormat!
                    result["tiebreakAt"] = tiebreakAt
                } else {
                    result["noTiebreak"] = String(true)
                }
                if setTo != nil {
                    return result
                } else {
                    return nil
                }
            }
        }
        return nil
    }

    func parseTiebreakAt(setFormatString: String) -> String? {
        if setFormatString.contains("@") && !setFormatString.starts(with: "@") {
            let parts = setFormatString.split(separator: "@").map { String($0) }
            return getNumber(formatstring: parts[1]) != nil ? String(parts[1]) : nil
        }
        return nil
    }

    func parseTiebreakFormat(formatstring: String) -> [String: String]? {
        if formatstring.starts(with: "TB") {
            let NoAD = isNoAD(formatstring: formatstring)
            var tiebreakToString = formatstring.replacingOccurrences(of: "TB", with: "").replacingOccurrences(of: NOAD, with: "")
            tiebreakToString = matches(for: "([0-9]+)", in: tiebreakToString)[0]
            let tiebreakTo = getNumber(formatstring: tiebreakToString)
            if tiebreakTo != nil {
                var result: [String: String] = ["tiebreakTo": String(tiebreakTo!)]
                if NoAD {
                    result["NoAD"] = String(true)
                }
                return result
            }
        }
        return nil
    }

    func parseTimedSet(formatstring: String) -> [String: String]? {
        if let minutes = getNumber(formatstring: String(formatstring[formatstring.index(formatstring.startIndex, offsetBy: 1)...])) {
            return ["timed": String(true), "minutes": String(minutes)]
        } else {
            return nil
        }
    }

    func isNoAD(formatstring: String) -> Bool {
        return formatstring.contains(NOAD)
    }

    func getNumber(formatstring: String) -> Int? {
        return Int(formatstring)
    }

    // Stringify

    func stringify(matchUpFormatObject: [String: Any], preserveRedundant: Bool = false) -> String? {
        if let minutesString = matchUpFormatObject["minutes"] as? String, let _ = getNumber(formatstring: minutesString), matchUpFormatObject["timed"] as? String == "true" {
            return timedSetFormat(matchUpFormatObject: matchUpFormatObject)
        }
        if matchUpFormatObject["bestOf"] != nil && matchUpFormatObject["setFormat"] != nil {
            return getSetFormat(matchUpFormatObject: matchUpFormatObject, preserveRedundant: preserveRedundant)
        }
        return nil
    }

    func timedSetFormat(matchUpFormatObject: [String: Any]) -> String? {
        return "T\(matchUpFormatObject["minutes"] as? String ?? "")"
    }

    func getSetFormat(matchUpFormatObject: [String: Any], preserveRedundant: Bool) -> String? {
        let bestOfValue = getNumber(formatstring: matchUpFormatObject["bestOf"] as? String ?? "")
        let bestOfCode = bestOfValue != nil ? "\(SET)\(bestOfValue!)" : ""
        let setCountValue = stringifySet(setObject: matchUpFormatObject["setFormat"] as? [String: Any] ?? [:], preserveRedundant: preserveRedundant)
        let setCode = setCountValue != nil ? "S:\(setCountValue!)" : ""
        let finalSetCountValue = stringifySet(setObject: matchUpFormatObject["finalSetFormat"] as? [String: Any] ?? [:], preserveRedundant: preserveRedundant)
        let finalSetCode = (bestOfValue != nil && bestOfValue! > 1 && finalSetCountValue != nil && setCountValue != finalSetCountValue) ? "F:\(finalSetCountValue!)" : ""
        let valid = !bestOfCode.isEmpty && setCountValue != nil
        if valid {
            return [bestOfCode, setCode, finalSetCode].filter { !$0.isEmpty }.joined(separator: "-")
        }
        return nil
    }

    func stringifySet(setObject: [String: Any], preserveRedundant: Bool) -> String? {
        if setObject["timed"] != nil {
            return timedSetFormat(matchUpFormatObject: setObject)
        }
        if setObject["tiebreakSet"] != nil {
            return tiebreakFormat(tieobject: setObject["tiebreakSet"] as? [String: Any] ?? [:])
        }
        let setToValue = getNumber(formatstring: setObject["setTo"] as? String ?? "")
        if setToValue != nil {
            let NoAD = setObject["NoAD"] != nil ? NOAD : ""
            let setTiebreakValue = tiebreakFormat(tieobject: setObject["tiebreakFormat"] as? [String: Any] ?? [:])
            let setTiebreakCode = (setTiebreakValue != nil && !setTiebreakValue!.isEmpty) ? "/\(setTiebreakValue!)" : ""
            let tiebreakAtValue = getNumber(formatstring: setObject["tiebreakAt"] as? String ?? "")
            let tiebreakAtCode =
                (tiebreakAtValue != nil && (preserveRedundant || tiebreakAtValue != setToValue)) ? "@\(tiebreakAtValue!)" : ""
            if setTiebreakValue != nil {
                return "\(setToValue != nil ? String(setToValue!) : "")\(NoAD)\(setTiebreakCode)\(tiebreakAtCode)"
            } else {
                return nil
            }
        } else {
            return nil
        }
    }

    func tiebreakFormat(tieobject: [String: Any]) -> String? {
        if tieobject["tiebreakTo"] == nil {
            return ""
        } else if let tieBreakTo = getNumber(formatstring: tieobject["tiebreakTo"] as? String ?? "") {
            return "TB\(tieBreakTo)\(tieobject["NoAD"] != nil ? NOAD : "")"
        } else {
            return nil
        }
    }

    // isValidFormat
    func isValidMatchUpFormat(matchUpFormat: String) -> Bool {
        guard let parsedFormat = parse(matchUpFormatCode: matchUpFormat) else {
            return false
        }
        if
            (parsedFormat["setFormat"] as? [String: Any])?["timed"] != nil &&
            parsedFormat["bestOf"] as? Int == 1 &&
            (matchUpFormat.range(of: "SET1-S:") != nil && (matchUpFormat.distance(from: matchUpFormat.startIndex, to: matchUpFormat.range(of: "SET1-S:")!.lowerBound) != 0)) &&
            matchUpFormat.starts(with: "T")
        {
            guard let stringResult = stringify(matchUpFormatObject: parsedFormat) else {
                return false
            }
            return stringResult[stringResult.index(stringResult.startIndex, offsetBy: 7)...] == matchUpFormat
        }
        let setsParts = matches(for: "-S([0-9]+)+:TB([0-9]+)@([0-9]*)([A-Za-z]*)", in: matchUpFormat)
        let digitsMatches = matches(for: "([0-9]+)", in: matchUpFormat)
        let setsTo = digitsMatches.count > 0 ? digitsMatches[0] : nil
        let tiebreakAt = digitsMatches.count > 2 ? digitsMatches[2] : nil

        let finalSetParts = matches(for: "-S([0-9]+)+:TB([0-9]+)@([0-9]*)([A-Za-z]*)", in: matchUpFormat)
        let finalSetTo = setsParts.count > 0 ? setsParts[0] : nil
        let finalTiebreakAt = setsParts.count > 2 ? setsParts[2] : nil

        let preserveRedundant = (setsParts.count > 0 && digitsMatches.count > 0 && setsTo == tiebreakAt)
            || (finalSetParts.count > 0 && digitsMatches.count > 0 && finalSetTo == finalTiebreakAt)

        return stringify(matchUpFormatObject: parsedFormat, preserveRedundant: preserveRedundant) == matchUpFormat
    }
}

//
// var resultDict = parse(matchUpFormatCode: "SET1-S:4/TB5@3")
// print(formJSONString(dict: resultDict!))
// var stringified = stringify(matchUpFormatObject: resultDict!)
// print("Strigified value = " + (stringified ?? ""))
// print("isValidMatchUpFormat = \(isValidMatchUpFormat(matchUpFormat: "SET1-S:4/TB5@3"))")
