//
//  ShotOutcome.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ShotOutcome: String, CaseIterable {
    case shotIn
    case shotOut
    case shotLet

    var code: String {
        switch self {
        case .shotIn: return "I"
        case .shotOut: return "O"
        case .shotLet: return "L"
        }
    }

    var extendedCode: String {
        switch self {
        case .shotIn: return "IN"
        case .shotOut: return "OUT"
        case .shotLet: return "LET"
        }
    }

    var description: String {
        switch self {
        case .shotIn: return "In"
        case .shotOut: return "Out"
        case .shotLet: return "Let "
        }
    }
    
    static func getShotOutcome(shotOutcome: String) -> ShotOutcome {
        switch shotOutcome {
        case "I": return .shotIn
        case "O": return .shotOut
        case "L": return .shotLet
        default: return .shotIn
        }
    }
}

extension ShotOutcome: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ShotOutcome.getShotOutcome(shotOutcome: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
