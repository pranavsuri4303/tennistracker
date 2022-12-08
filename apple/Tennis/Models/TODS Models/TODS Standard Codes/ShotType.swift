//
//  ShotType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ShotType: String, CaseIterable {
    case forehand
    case backhand
    case serve

    var code: String {
        switch self {
        case .forehand: return "FH"
        case .backhand: return "BH"
        case .serve: return "SE"
        }
    }

    var extendedCode: String {
        switch self {
        case .forehand: return "FOREHAND"
        case .backhand: return "BACKHAND"
        case .serve: return "SERVE"
        }
    }

    var description: String {
        switch self {
        case .forehand: return "Forehand"
        case .backhand: return "Backhand"
        case .serve: return "Serve"
        }
    }
    
    static func getShotType(shotType: String) -> ShotType {
        switch shotType {
        case "FH": return .forehand
        case "BH": return .forehand
        case "SE": return .serve
        default: return .forehand
        }
    }
}

extension ShotType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ShotType.getShotType(shotType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
