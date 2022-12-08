//
//  ShotMadeFrom.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ShotMadeFrom: String, CaseIterable {
    case baseline
    case serviceLine
    case net

    var code: String {
        switch self {
        case .baseline: return "BL"
        case .serviceLine: return "SL"
        case .net: return "N"
        }
    }

    var extendedCode: String {
        switch self {
        case .baseline: return "BASELINE"
        case .serviceLine: return "SERVICELINE"
        case .net: return "NET"
        }
    }

    var description: String {
        switch self {
        case .baseline: return "Baseline"
        case .serviceLine: return "Service line"
        case .net: return "Net "
        }
    }
    
    static func getShotMadeFrom(shotMadeFrom: String) -> ShotMadeFrom {
        switch shotMadeFrom {
        case "BL": return .baseline
        case "SL": return .serviceLine
        case "N": return .net
        default: return .baseline
        }
    }
}

extension ShotMadeFrom: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ShotMadeFrom.getShotMadeFrom(shotMadeFrom: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
