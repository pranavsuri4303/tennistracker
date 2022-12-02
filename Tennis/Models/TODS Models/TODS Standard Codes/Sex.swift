//
//  Sex.swift
//  Tennis
//
//  Created by Pranav Suri on 1/12/22.
//

import Foundation

enum Sex: String, CaseIterable {
    case male
    case female

    var code: String {
        switch self {
        case .male: return "M"
        case .female: return "F"
        }
    }

    var extendedCode: String {
        switch self {
        case .male: return "MALE"
        case .female: return "FEMALE"
        }
    }

    var description: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        }
    }
    
    static func getSex(sex: String) -> Sex {
        switch sex {
        case "M":
            return .male
        case "F":
            return .female
        default:
            return .male
        }
    }
}

extension Sex: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = Sex.getSex(sex: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.code)
    }
}
