//
//  WinReason.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum WinReason: String, CaseIterable {
    case ace
    case winner
    case forced
    case unforced
    case error
    case doubleFault

    var code: String {
        switch self {
        case .ace: return "A"
        case .winner: return "W"
        case .forced: return "F"
        case .unforced: return "U"
        case .error: return "E"
        case .doubleFault: return "DF"
        }
    }

    var extendedCode: String {
        switch self {
        case .ace: return "ACE"
        case .winner: return "WINNER"
        case .forced: return "FORCED"
        case .unforced: return "UNFORCED"
        case .error: return "ERROR"
        case .doubleFault: return "DOUBLE_FAULT"
        }
    }

    var description: String {
        switch self {
        case .ace: return "Ace"
        case .winner: return "Winner"
        case .forced: return "Forced"
        case .unforced: return "Unforced"
        case .error: return "Error"
        case .doubleFault: return "Double Fault"
        }
    }

    static func getWinReason(winReason: String) -> WinReason {
        switch winReason {
        case "A": return .ace
        case "W": return .winner
        case "F": return .forced
        case "U": return .unforced
        case "E": return .error
        case "DF": return .doubleFault
        default: return .winner
        }
    }
}

extension WinReason: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = WinReason.getWinReason(winReason: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
