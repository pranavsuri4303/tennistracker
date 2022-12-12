//
//  ParticipantType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ParticipantType: String, CaseIterable {
    case individual
    case pair
    case team
    case squad

    var code: String {
        switch self {
        case .individual: return "I"
        case .pair: return "P"
        case .team: return "T"
        case .squad: return "S"
        }
    }

    var extendedCode: String {
        switch self {
        case .individual: return "INDIVIDUAL"
        case .pair: return "PAIR"
        case .team: return "TEAM"
        case .squad: return "SQUAD"
        }
    }

    var description: String {
        switch self {
        case .individual: return "Individual"
        case .pair: return "Pair"
        case .team: return "Team"
        case .squad: return "Squad"
        }
    }

    static func getParticipantType(participantType: String) -> ParticipantType {
        switch participantType {
        case "I": return .individual
        case "P": return .pair
        case "T": return .team
        case "S": return .squad
        default: return .individual
        }
    }
}

extension ParticipantType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ParticipantType.getParticipantType(participantType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
