//
//  MatchUpStatus.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum MatchUpStatus: String, CaseIterable {
    case abandoned
    case bye
    case defaulted
    case retired
    case walkover
    case completed
    case inProgress
    case notPlayed
    case suspended
    case toBePlayed
    case deadRubber

    var code: String {
        switch self {
        case .abandoned: return "ABN"
        case .bye: return "BYE"
        case .defaulted: return "DEF"
        case .retired: return "RET"
        case .walkover: return "WO"
        case .completed: return "CO"
        case .inProgress: return "IP"
        case .notPlayed: return "NP"
        case .suspended: return "SUS"
        case .toBePlayed: return "TBP"
        case .deadRubber: return "DR"
        }
    }

    var extendedCode: String {
        switch self {
        case .abandoned: return "ABANDONED"
        case .bye: return "BYE"
        case .defaulted: return "DEFAULTED"
        case .retired: return "RETIRED"
        case .walkover: return "WALKOVER"
        case .completed: return "COMPLETED"
        case .inProgress: return "IN_PROGRESS"
        case .notPlayed: return "NOT_PLAYED"
        case .suspended: return "SUSPENDED"
        case .toBePlayed: return "TO_BE_PLAYED"
        case .deadRubber: return "DEAD_RUBBER"
        }
    }

    var description: String {
        switch self {
        case .abandoned: return "Abandoned"
        case .bye: return "Bye"
        case .defaulted: return "Defaulted"
        case .retired: return "Retired"
        case .walkover: return "Walkover"
        case .completed: return "Completed"
        case .inProgress: return "In progress"
        case .notPlayed: return "Not played"
        case .suspended: return "Suspended"
        case .toBePlayed: return "To be played"
        case .deadRubber: return "Dead rubber"
        }
    }

    static func getMatchUpStatus(matchUpStatus: String) -> MatchUpStatus {
        switch matchUpStatus {
        case "ABN": return .abandoned
        case "BYE": return .bye
        case "DEF": return .defaulted
        case "RET": return .retired
        case "WO": return .walkover
        case "CO": return .completed
        case "IP": return .inProgress
        case "NP": return .notPlayed
        case "SUS": return .suspended
        case "TBP": return .toBePlayed
        case "DR": return .deadRubber
        default: return .notPlayed
        }
    }
}

extension MatchUpStatus: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = MatchUpStatus.getMatchUpStatus(matchUpStatus: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
