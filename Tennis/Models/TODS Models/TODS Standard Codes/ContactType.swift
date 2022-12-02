//
//  ContactType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ContactType: String, CaseIterable {
    case director
    case official
    case referee
    case media
    case press

    var code: String {
        switch self {
        case .director: return "D"
        case .official: return "O"
        case .referee: return "R"
        case .media: return "M"
        case .press: return "P"
        }
    }

    var extendedCode: String {
        switch self {
        case .director: return "DIRECTOR"
        case .official: return "OFFICIAL"
        case .referee: return "REFEREE"
        case .media: return "MEDIA"
        case .press: return "PRESS"
        }
    }

    var description: String {
        switch self {
        case .director: return "Director"
        case .official: return "Official"
        case .referee: return "Referee"
        case .media: return "Media"
        case .press: return "Press"
        }
    }
    
    static func getContactType(contactType: String) -> ContactType {
        switch contactType {
        case "D":
            return .director
        case "O":
            return .official
        case "R":
            return .referee
        case "M":
            return .media
        case "P":
            return .press
        default:
            return .director
        }
    }
}

extension ContactType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ContactType.getContactType(contactType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
