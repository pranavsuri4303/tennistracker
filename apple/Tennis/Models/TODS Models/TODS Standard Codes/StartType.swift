//
//  StartType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum StartType: String, CaseIterable {
    case fixed
    case follows
    case followsWithDelay
    case notBefore
    case actual

    var code: String {
        switch self {
        case .fixed: return "FX"
        case .follows: return "FO"
        case .followsWithDelay: return "FD"
        case .notBefore: return "NB"
        case .actual: return "AC"
        }
    }

    var extendedCode: String {
        switch self {
        case .fixed: return "FIXED"
        case .follows: return "FOLLOWS"
        case .followsWithDelay: return "FOLLOWSWITHDELAY"
        case .notBefore: return "NOTBEFORE"
        case .actual: return "ACTUAL"
        }
    }

    var description: String {
        switch self {
        case .fixed: return "Fixed"
        case .follows: return "Follows"
        case .followsWithDelay: return "Follows with delay"
        case .notBefore: return "Not before"
        case .actual: return "Actual"
        }
    }

    static func getStartType(startType: String) -> StartType {
        switch startType {
        case "FX": return .fixed
        case "FO": return .follows
        case "FD": return .followsWithDelay
        case "NB": return .notBefore
        case "AC": return .actual
        default: return .actual
        }
    }
}

extension StartType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = StartType.getStartType(startType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
