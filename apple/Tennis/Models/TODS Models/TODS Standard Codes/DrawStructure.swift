//
//  DrawStructure.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum DrawStructure: String, CaseIterable {
    case knockOut
    case roundRobin
    case feedIn
    case other

    var code: String {
        switch self {
        case .knockOut: return "KO"
        case .roundRobin: return "RR"
        case .feedIn: return "FI"
        case .other: return "OT"
        }
    }

    var extendedCode: String {
        switch self {
        case .knockOut: return "KNOCK_OUT"
        case .roundRobin: return "ROUND_ROBIN"
        case .feedIn: return "FEED_IN"
        case .other: return "OTHER"
        }
    }

    var description: String {
        switch self {
        case .knockOut: return "Knock-out structure"
        case .roundRobin: return "Round Robin structure"
        case .feedIn: return "Feed-in structure"
        case .other: return "Other structure"
        }
    }
    
    static func getDrawStructure(drawStructure: String) -> DrawStructure {
        switch drawStructure {
        case "KO":
            return .knockOut
        case "RR":
            return .roundRobin
        case "FI":
            return .feedIn
        case "OT":
            return .other
        default:
            return .knockOut
        }
    }
}

extension DrawStructure: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = DrawStructure.getDrawStructure(drawStructure: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
