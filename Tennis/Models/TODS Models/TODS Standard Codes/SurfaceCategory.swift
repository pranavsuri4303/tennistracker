//
//  SurfaceCategory.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum SurfaceCategory {
    case hard
    case clay
    case artificial
    case grass

    var code: String {
        switch self {
        case .hard: return "H"
        case .clay: return "C"
        case .artificial: return "A"
        case .grass: return "G"
        }
    }

    var extendedCode: String {
        switch self {
        case .hard: return "HARD"
        case .clay: return "CLAY"
        case .artificial: return "ARTIFICIAL"
        case .grass: return "GRASS"
        }
    }

    var description: String {
        switch self {
        case .hard: return "Hard"
        case .clay: return "Clay"
        case .artificial: return "Artificial"
        case .grass: return "Grass"
        }
    }
    
    static func getSurfaceCategory(surfaceCategory: String) -> SurfaceCategory {
        switch surfaceCategory {
        case "H":
            return .hard
        case "C":
            return .clay
        case "A":
            return .artificial
        case "G":
            return .grass
        default:
            return .hard
        }
    }
}

extension SurfaceCategory: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = SurfaceCategory.getSurfaceCategory(surfaceCategory: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
