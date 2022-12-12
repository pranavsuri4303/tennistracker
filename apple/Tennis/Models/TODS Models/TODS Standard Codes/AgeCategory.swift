//
//  AgeCategory.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum AgeCategory: String, CaseIterable {
    case under
    case over
    case between
    case combined

    var code: String {
        switch self {
        case .under: return "U"
        case .over: return "O"
        case .between: return "-"
        case .combined: return "C"
        }
    }

    var extendedCode: String {
        switch self {
        case .under: return "UNDER"
        case .over: return "OVER"
        case .between: return "BETWEEN"
        case .combined: return "COMBINED"
        }
    }

    var description: String {
        switch self {
        case .under: return "Under the age. Excluding age as a prefix, Including age as a suffix"
        case .over: return "Over the age. Excluding age as a prefix, Including age as a suffix"
        case .between: return "Over age up to age. Excluding age as a prefix, Including age as a suffix."
        case .combined: return "The combined ages of all players on a single side (usually a PAIR)"
        }
    }

    static func getAgeCategory(ageCategory: String) -> AgeCategory {
        switch ageCategory {
        case "U":
            return .under
        case "O":
            return .over
        case "-":
            return .between
        case "C":
            return .combined
        default:
            return .under
        }
    }
}

extension AgeCategory: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = AgeCategory.getAgeCategory(ageCategory: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
