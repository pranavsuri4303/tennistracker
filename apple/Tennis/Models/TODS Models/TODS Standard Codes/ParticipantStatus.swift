//
//  ParticipantStatus.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ParticipantStatus: String, CaseIterable {
    case active
    case withdrawn

    var code: String {
        switch self {
        case .active: return "AC"
        case .withdrawn: return "WD"
        }
    }

    var extendedCode: String {
        switch self {
        case .active: return "ACTIVE"
        case .withdrawn: return "WITHDRAWN"
        }
    }

    var description: String {
        switch self {
        case .active: return "Active"
        case .withdrawn: return "Withdrawn"
        }
    }
    
    static func getParticipantStatus(participantStatus: String) -> ParticipantStatus {
        switch participantStatus {
        case "AC" : return .active
        case "WD" : return .withdrawn
        default : return .active
        }
    }
}

extension ParticipantStatus: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ParticipantStatus.getParticipantStatus(participantStatus: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
