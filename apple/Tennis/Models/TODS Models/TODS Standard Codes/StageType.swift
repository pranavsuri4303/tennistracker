//
//  StageType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum StageType: String, CaseIterable {
    case main
    case qualifying
    case playOff
    case consolation

    var code: String {
        switch self {
        case .main: return "M"
        case .qualifying: return "QD"
        case .playOff: return "PO"
        case .consolation: return "CD"
        }
    }

    var extendedCode: String {
        switch self {
        case .main: return "MAIN"
        case .qualifying: return "QUALIFYING"
        case .playOff: return "PLAY_OFF"
        case .consolation: return "CONSOLATION"
        }
    }

    var description: String {
        switch self {
        case .main: return "Main Stage"
        case .qualifying: return "Qualifying Stage"
        case .playOff: return "Play-off"
        case .consolation: return "Consolation Stage"
        }
    }

    static func getStageType(stageType: String) -> StageType {
        switch stageType {
        case "M": return .main
        case "QD": return .qualifying
        case "PO": return .playOff
        case "CD": return .consolation
        default: return .main
        }
    }
}

extension StageType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = StageType.getStageType(stageType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
