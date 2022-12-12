//
//  ParticipantRole.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ParticipantRole: String, CaseIterable {
    case competitor
    case official
    case captain
    case coach

    var code: String {
        switch self {
        case .competitor: return "COMP"
        case .official: return "OFF"
        case .captain: return "CAP"
        case .coach: return "CCH"
        }
    }

    var extendedCode: String {
        switch self {
        case .competitor: return "COMPETITOR"
        case .official: return "OFFICIAL"
        case .captain: return "CAPTAIN"
        case .coach: return "COACH"
        }
    }

    var description: String {
        switch self {
        case .competitor: return "Competitor"
        case .official: return "Official"
        case .captain: return "Captain"
        case .coach: return "Coach"
        }
    }

    static func getParticipantRole(participantRole: String) -> ParticipantRole {
        switch participantRole {
        case "COMP": return .competitor
        case "OFF": return .official
        case "CAP": return .captain
        case "CCH": return .coach
        default: return .competitor
        }
    }
}

extension ParticipantRole: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ParticipantRole.getParticipantRole(participantRole: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
