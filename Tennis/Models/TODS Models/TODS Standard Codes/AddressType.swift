//
//  AddressType.swift
//  Tennis
//
//  Created by Pranav Suri on 1/12/22.
//

import Foundation

enum AddressType: String {
    case home
    case work
    case mail
    case residential
    case venue

    var code: String {
        switch self {
        case .home: return "H"
        case .work: return "W"
        case .mail: return "M"
        case .residential: return "R"
        case .venue: return "V"
        }
    }

    var extendedCode: String {
        switch self {
        case .home: return "HOME"
        case .work: return "WORK"
        case .mail: return "MAIL"
        case .residential: return "RESIDENTIAL"
        case .venue: return "VENUE"
        }
    }

    var description: String {
        switch self {
        case .home: return "Home Address"
        case .work: return "Work Address"
        case .mail: return "Mail Address"
        case .residential: return "Residential Address"
        case .venue: return "Venue Location"
        }
    }
    
    static func getAddressType(addressType: String) -> AddressType {
        switch addressType {
        case "H":
            return .home
        case "W":
            return .work
        case "M":
            return .mail
        case "R":
            return .residential
        case "V":
            return .venue
        default:
            return .home
        }
    }
}

extension AddressType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = AddressType.getAddressType(addressType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
