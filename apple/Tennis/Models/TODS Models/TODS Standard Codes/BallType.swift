//
//  BallType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum BallType: String, CaseIterable {
    case type1Fast
    case t2StandardPressureless
    case t2StandardPressurised
    case type3Slow
    case stage1Green
    case stage2Orange
    case stage3Red
    case highAltitude

    var code: String {
        switch self {
        case .type1Fast: return "T1"
        case .t2StandardPressureless: return "T2P"
        case .t2StandardPressurised: return "T2L"
        case .type3Slow: return "T3"
        case .stage1Green: return "S1"
        case .stage2Orange: return "S2"
        case .stage3Red: return "S3"
        case .highAltitude: return "HA"
        }
    }

    var extendedCode: String {
        switch self {
        case .type1Fast: return "TYPE1FAST"
        case .t2StandardPressureless: return "T2STANDARD_PRESSURELESS"
        case .t2StandardPressurised: return "T2STANDARD_PRESSURISED"
        case .type3Slow: return "TYPE3SLOW"
        case .stage1Green: return "STAGE1GREEN"
        case .stage2Orange: return "STAGE2ORANGE"
        case .stage3Red: return "STAGE3RED"
        case .highAltitude: return "HIGH_ALTITUDE"
        }
    }

    var description: String {
        switch self {
        case .type1Fast: return "Type 1 - Fast"
        case .t2StandardPressureless: return "Type 2 - Standard (Pressureless)"
        case .t2StandardPressurised: return "Type 2 - Standard (Pressurised)"
        case .type3Slow: return "Type 3 - Slow"
        case .stage1Green: return "Stage 1 - Green"
        case .stage2Orange: return "Stage 2 - Orange"
        case .stage3Red: return "Stage 3 - Red"
        case .highAltitude: return "High Altitude"
        }
    }
    
    static func getBallType(ballType: String) -> BallType {
        switch ballType {
        case "T1":
            return .type1Fast
        case "T2P":
            return .t2StandardPressureless
        case "T2L":
            return .t2StandardPressurised
        case "T3":
            return .type3Slow
        case "S1":
            return .stage1Green
        case "S2":
            return .stage2Orange
        case "S3":
            return .stage3Red
        case "HA":
            return .highAltitude
        default:
            return .type1Fast
        }
    }
}

extension BallType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BallType.getBallType(ballType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
