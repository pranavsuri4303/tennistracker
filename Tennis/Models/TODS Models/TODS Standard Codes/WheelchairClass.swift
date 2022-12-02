//
//  WheelchairClass.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum WheelchairClass {
    case quad
    case standard

    var code: String {
        switch self {
        case .quad: return "Q"
        case .standard: return "S"
        }
    }

    var extendedCode: String {
        switch self {
        case .quad: return "QUAD"
        case .standard: return "STANDARD"
        }
    }

    var description: String {
        switch self {
        case .quad: return "Quad"
        case .standard: return "Standard"
        }
    }
    
    static func getWheelchairClass(wheelchairClass: String) -> WheelchairClass {
        switch wheelchairClass {
        case "Q":
            return .quad
        case "S":
            return .standard
        default:
            return .standard
        }
    }
}

extension WheelchairClass: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = WheelchairClass.getWheelchairClass(wheelchairClass: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
