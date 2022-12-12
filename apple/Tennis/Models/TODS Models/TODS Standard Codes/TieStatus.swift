//
//  TieStatus.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum TieStatus: String, CaseIterable {
    case toBePlayed
    case inProgress
    case complete

    var code: String {
        switch self {
        case .toBePlayed: return "TP"
        case .inProgress: return "IP"
        case .complete: return "CO"
        }
    }

    var extendedCode: String {
        switch self {
        case .toBePlayed: return "TO_BE_PLAYED"
        case .inProgress: return "IN_PROGRESS"
        case .complete: return "COMPLETE"
        }
    }

    var description: String {
        switch self {
        case .toBePlayed: return "To be played"
        case .inProgress: return "In progress"
        case .complete: return "Complete"
        }
    }

    static func getTieStatus(tieStatus: String) -> TieStatus {
        switch tieStatus {
        case "TP":
            return .toBePlayed
        case "IP":
            return .inProgress
        case "CO":
            return .complete
        default:
            return .toBePlayed
        }
    }
}

extension TieStatus: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = TieStatus.getTieStatus(tieStatus: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
