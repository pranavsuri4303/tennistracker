//
//  Gender.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum Gender: String, CaseIterable {
    case male
    case female
    case mixed
    case any

    var code: String {
        switch self {
        case .male: return "M"
        case .female: return "F"
        case .mixed: return "X"
        case .any: return "A"
        }
    }

    var extendedCode: String {
        switch self {
        case .male: return "MALE"
        case .female: return "FEMALE"
        case .mixed: return "MIXED"
        case .any: return "ANY"
        }
    }

    var description: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        case .mixed: return "Mixed"
        case .any: return "Any Gender"
        }
    }

    static func getGender(gender: String) -> Gender {
        switch gender {
        case "M":
            return .male
        case "F":
            return .female
        case "X":
            return .mixed
        case "A":
            return .any
        default:
            return .any
        }
    }
}

extension Gender: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = Gender.getGender(gender: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
