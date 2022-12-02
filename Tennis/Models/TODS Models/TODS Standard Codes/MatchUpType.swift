//
//  MatchUpType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum MatchUpType {
    case singles
    case doubles

    var code: String {
        switch self {
        case .singles: return "S"
        case .doubles: return "D"
        }
    }

    var extendedCode: String {
        switch self {
        case .singles: return "SINGLES"
        case .doubles: return "DOUBLES"
        }
    }

    var description: String {
        switch self {
        case .singles: return "Singles"
        case .doubles: return "Doubles"
        }
    }
    
    static func getMatchUpType(matchUpType: String) -> MatchUpType {
        switch matchUpType {
        case "S":
            return .singles
        case "D":
            return .doubles
        default:
            return .singles
        }
    }
}

extension MatchUpType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = MatchUpType.getMatchUpType(matchUpType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
