//
//  EndType.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum EndType: String, CaseIterable {
    case fixed
    case actual

    var code: String {
        switch self {
        case .fixed: return "FX"
        case .actual: return "AC"
        }
    }

    var extendedCode: String {
        switch self {
        case .fixed: return "FIXED"
        case .actual: return "ACTUAL"
        }
    }

    var description: String {
        switch self {
        case .fixed: return "Fixed"
        case .actual: return "Actual"
        }
    }
    
    static func getEndType(endType: String) -> EndType {
        switch endType {
        case "FX":
            return .fixed
        case "AC":
            return .actual
        default:
            return .fixed
        }
    }
}

extension EndType: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EndType.getEndType(endType: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
