//
//  PlayingHandCode.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum PlayingHandCode: String, CaseIterable {
    case ambidextrous
    case left
    case right

    var code: String {
        switch self {
        case .ambidextrous: return "A"
        case .left: return "L"
        case .right: return "R"
        }
    }

    var extendedCode: String {
        switch self {
        case .ambidextrous: return "AMBIDEXTROUS"
        case .left: return "LEFT"
        case .right: return "RIGHT"
        }
    }

    var description: String {
        switch self {
        case .ambidextrous: return "Ambidextrous"
        case .left: return "Left handed"
        case .right: return "Right handed"
        }
    }
    
    static func getPlayingHandCode(playingHandCode: String) -> PlayingHandCode {
        switch playingHandCode {
        case "A": return .ambidextrous
        case "L": return .left
        case "R": return .right
        default: return .ambidextrous
        }
    }
}

extension PlayingHandCode: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = PlayingHandCode.getPlayingHandCode(playingHandCode: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
