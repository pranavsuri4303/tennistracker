//
//  File.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum EntryStatus {
    case directAcceptance
    case qualifier
    case luckyLoser
    case wildcard
    case alternate
    case confirmed
    case withdrawn

    var code: String {
        switch self {
        case .directAcceptance: return "DA"
        case .qualifier: return "QU"
        case .luckyLoser: return "LL"
        case .wildcard: return "WC"
        case .alternate: return "AL"
        case .confirmed: return "CO"
        case .withdrawn: return "WD"
        }
    }

    var extendedCode: String {
        switch self {
        case .directAcceptance: return "DIRECT_ACCEPTANCE"
        case .qualifier: return "QUALIFIER"
        case .luckyLoser: return "LUCKY_LOSER"
        case .wildcard: return "WILDCARD"
        case .alternate: return "ALTERNATE"
        case .confirmed: return "CONFIRMED"
        case .withdrawn: return "WITHDRAWN"
        }
    }

    var description: String {
        switch self {
        case .directAcceptance: return "Direct acceptance"
        case .qualifier: return "Qualifier"
        case .luckyLoser: return "Lucky loser"
        case .wildcard: return "Wildcard"
        case .alternate: return "Alternate"
        case .confirmed: return "Confirmed"
        case .withdrawn: return "Withdrawn"
        }
    }
    
    static func getEntryStatus(entryStatus: String) -> EntryStatus {
        switch entryStatus {
        case "DA":
            return .directAcceptance
        case "QU":
            return .qualifier
        case "LL":
            return .luckyLoser
        case "WC":
            return .wildcard
        case "AL":
            return .alternate
        case "CO":
            return .confirmed
        case "WD":
            return .withdrawn
        default:
            return .directAcceptance
        }
    }
}

extension EntryStatus: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EntryStatus.getEntryStatus(entryStatus: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
