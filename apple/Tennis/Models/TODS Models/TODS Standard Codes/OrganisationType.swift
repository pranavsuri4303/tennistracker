//
//  OrganisationType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum OrganisationType: String, CaseIterable {
    case club
    case nationalAssociation
    case school

    var code: String {
        switch self {
        case .club: return "CL"
        case .nationalAssociation: return "NA"
        case .school: return "SC"
        }
    }

    var extendedCode: String {
        switch self {
        case .club: return "CLUB"
        case .nationalAssociation: return "NATIONAL_ASSOCIATION"
        case .school: return "SCHOOL"
        }
    }

    var description: String {
        switch self {
        case .club: return "Club"
        case .nationalAssociation: return "National association"
        case .school: return "School"
        }
    }

    static func getOrganisationType(organisationType: String) -> OrganisationType {
        switch organisationType {
        case "CL": return .club
        case "NA": return .nationalAssociation
        case "SC": return .school
        default: return .club
        }
    }
}

extension OrganisationType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = OrganisationType.getOrganisationType(organisationType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
