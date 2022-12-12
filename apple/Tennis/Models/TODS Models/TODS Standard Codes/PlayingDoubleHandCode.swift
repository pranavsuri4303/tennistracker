//
//  PlayingDoubleHandCode.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum PlayingDoubleHandCode: String, CaseIterable {
    case forehand
    case backhand
    case both
    case none

    var code: String {
        switch self {
        case .forehand: return "FH"
        case .backhand: return "BH"
        case .both: return "FB"
        case .none: return "NO"
        }
    }

    var extendedCode: String {
        switch self {
        case .forehand: return "FOREHAND"
        case .backhand: return "BACKHAND"
        case .both: return "BOTH"
        case .none: return "NONE"
        }
    }

    var description: String {
        switch self {
        case .forehand: return "Double Forehand"
        case .backhand: return "Double Backhand"
        case .both: return "Both"
        case .none: return "None"
        }
    }

    static func getPlayingDoubleHandCode(playingDoubleHandCode: String) -> PlayingDoubleHandCode {
        switch playingDoubleHandCode {
        case "FH":
            return .forehand
        case "BH":
            return .backhand
        case "FB":
            return .both
        case "NO":
            return .none
        default:
            return .forehand
        }
    }
}

extension PlayingDoubleHandCode: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = PlayingDoubleHandCode.getPlayingDoubleHandCode(playingDoubleHandCode: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
