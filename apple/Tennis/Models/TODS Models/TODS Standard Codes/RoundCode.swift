//
//  RoundCode.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum RoundCode: String, CaseIterable {
    case final
    case playoff
    case semifinal
    case quarterfinal
    case round16
    case round32
    case round64
    case round128
    case round256
    case roundRobin
    case quarterfinalQualifier
    case round5
    case round5Qualifier
    case round4
    case round4Qualifier
    case round3
    case round3Qualifier
    case round2
    case round1

    var code: String {
        switch self {
        case .final: return "FR"
        case .playoff: return "PO"
        case .semifinal: return "SF"
        case .quarterfinal: return "QF"
        case .round16: return "16"
        case .round32: return "32"
        case .round64: return "64"
        case .round128: return "128"
        case .round256: return "256"
        case .roundRobin: return "RR"
        case .quarterfinalQualifier: return "QQ"
        case .round5: return "R5"
        case .round5Qualifier: return "5Q"
        case .round4: return "R4"
        case .round4Qualifier: return "4Q"
        case .round3: return "R3"
        case .round3Qualifier: return "3Q"
        case .round2: return "R2"
        case .round1: return "R1"
        }
    }

    var extendedCode: String {
        switch self {
        case .final: return "FINAL"
        case .playoff: return "PLAYOFF"
        case .semifinal: return "SEMIFINAL"
        case .quarterfinal: return "QUARTERFINAL"
        case .round16: return "ROUND16"
        case .round32: return "ROUND32"
        case .round64: return "ROUND64"
        case .round128: return "ROUND128"
        case .round256: return "ROUND256"
        case .roundRobin: return "ROUNDROBIN"
        case .quarterfinalQualifier: return "QUARTERFINALQUALIFIER"
        case .round5: return "ROUND5"
        case .round5Qualifier: return "ROUND5QUALIFIER"
        case .round4: return "ROUND4"
        case .round4Qualifier: return "ROUND4QUALIFIER"
        case .round3: return "ROUND3"
        case .round3Qualifier: return "ROUND3QUALIFIER"
        case .round2: return "ROUND2"
        case .round1: return "ROUND1"
        }
    }

    var description: String {
        switch self {
        case .final: return "Finals"
        case .playoff: return "Playoff"
        case .semifinal: return "Semifinals"
        case .quarterfinal: return "Quarterfinals"
        case .round16: return "Round of 16"
        case .round32: return "Round of 32"
        case .round64: return "Round of 64"
        case .round128: return "Round of 128"
        case .round256: return "Round of 256"
        case .roundRobin: return "Round Robin"
        case .quarterfinalQualifier: return "Quarterfinal Qualifier"
        case .round5: return "Round 5"
        case .round5Qualifier: return "Round 5 Qualifier"
        case .round4: return "Round 4"
        case .round4Qualifier: return "Round 4 Qualifier"
        case .round3: return "Round 3"
        case .round3Qualifier: return "Round 3 Qualifier"
        case .round2: return "Round 2"
        case .round1: return "Round 1"
        }
    }

    static func getRoundCode(roundCode: String) -> RoundCode {
        switch roundCode {
        case "FR": return .final
        case "PO": return .playoff
        case "SF": return .semifinal
        case "QF": return .quarterfinal
        case "16": return .round16
        case "32": return .round32
        case "64": return .round64
        case "128": return .round128
        case "256": return .round256
        case "RR": return .roundRobin
        case "QQ": return .quarterfinalQualifier
        case "R5": return .round5
        case "5Q": return .round5Qualifier
        case "R4": return .round4
        case "4Q": return .round4Qualifier
        case "R3": return .round3
        case "3Q": return .round3Qualifier
        case "R2": return .round2
        case "R1": return .round1
        default: return .final
        }
    }
}

extension RoundCode: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = RoundCode.getRoundCode(roundCode: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
