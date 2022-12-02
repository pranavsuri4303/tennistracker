//
//  EventType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum EventType: String, CaseIterable {
    case singles
    case doubles
    case team

    var code: String {
        switch self {
        case .singles: return "S"
        case .doubles: return "D"
        case .team: return "T"
        }
    }

    var extendedCode: String {
        switch self {
        case .singles: return "SINGLES"
        case .doubles: return "DOUBLES"
        case .team: return "TEAM"
        }
    }

    var description: String {
        switch self {
        case .singles: return "Singles"
        case .doubles: return "Doubles"
        case .team: return "Team"
        }
    }
    
    static func getEventType(eventType: String) -> EventType {
        switch eventType {
        case "S":
            return .singles
        case "D":
            return .doubles
        case "T":
            return .team
        default:
            return .singles
        }
    }
}

extension EventType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EventType.getEventType(eventType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}

