//
//  EventLevel.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum EventLevel: String, CaseIterable {
    case international
    case national
    case regional
    case district
    case local
    case club
    case recreational

    var code: String {
        switch self {
        case .international: return "INT"
        case .national: return "NAT"
        case .regional: return "REG"
        case .district: return "DIS"
        case .local: return "LOC"
        case .club: return "CLB"
        case .recreational: return "REC"
        }
    }

    var extendedCode: String {
        switch self {
        case .international: return "INTERNATIONAL"
        case .national: return "NATIONAL"
        case .regional: return "REGIONAL"
        case .district: return "DISTRICT"
        case .local: return "LOCAL"
        case .club: return "CLUB"
        case .recreational: return "RECREATIONAL"
        }
    }

    var description: String {
        switch self {
        case .international: return "International"
        case .national: return "National"
        case .regional: return "Regional"
        case .district: return "District"
        case .local: return "Local"
        case .club: return "Club"
        case .recreational: return "Recreational"
        }
    }
    
    static func getEventLevel(eventLevel: String) -> EventLevel {
        switch eventLevel {
        case "INT":
            return .international
        case "NAT":
            return .national
        case "REG":
            return .regional
        case "DIS":
            return .district
        case "LOC":
            return .local
        case "CLB":
            return .club
        case "REC":
            return .recreational
        default:
            return .recreational
        }
    }
}

extension EventLevel: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EventLevel.getEventLevel(eventLevel: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}

