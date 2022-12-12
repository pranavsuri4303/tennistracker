//
//  Discipline.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum Discipline: String, CaseIterable {
    case tennis
    case beachTennis
    case wheelchairTennis

    var code: String {
        switch self {
        case .tennis: return "TE"
        case .beachTennis: return "BT"
        case .wheelchairTennis: return "WT"
        }
    }

    var extendedCode: String {
        switch self {
        case .tennis: return "TENNIS"
        case .beachTennis: return "BEACH_TENNIS"
        case .wheelchairTennis: return "WHEELCHAIR_TENNIS"
        }
    }

    var description: String {
        switch self {
        case .tennis: return "Tennis"
        case .beachTennis: return "Beach tennis"
        case .wheelchairTennis: return "Wheelchair tennis"
        }
    }

    static func getDiscipline(discipline: String) -> Discipline {
        switch discipline {
        case "TE":
            return .tennis
        case "BT":
            return .beachTennis
        case "WT":
            return .wheelchairTennis
        default:
            return .tennis
        }
    }
}

extension Discipline: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = Discipline.getDiscipline(discipline: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
