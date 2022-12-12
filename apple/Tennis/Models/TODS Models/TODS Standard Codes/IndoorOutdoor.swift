//
//  IndoorOutdoor.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum IndoorOutdoor: String, CaseIterable {
    case indoor
    case outdoor

    var code: String {
        switch self {
        case .indoor: return "I"
        case .outdoor: return "O"
        }
    }

    var extendedCode: String {
        switch self {
        case .indoor: return "INDOOR"
        case .outdoor: return "OUTDOOR"
        }
    }

    var description: String {
        switch self {
        case .indoor: return "Indoor"
        case .outdoor: return "Outdoor"
        }
    }

    static func getIndoorOutdoor(indoorOutdoor: String) -> IndoorOutdoor {
        switch indoorOutdoor {
        case "I":
            return .indoor
        case "O":
            return .outdoor
        default:
            return .indoor
        }
    }
}

extension IndoorOutdoor: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = IndoorOutdoor.getIndoorOutdoor(indoorOutdoor: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
