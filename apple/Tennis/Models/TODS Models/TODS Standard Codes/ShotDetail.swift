//
//  ShotDetail.swift
//  Tennis
//
//  Created by Pranav Suri on 2/12/22.
//

import Foundation

enum ShotDetail: String, CaseIterable {
    case dropShot
    case flat
    case groundStroke
    case volley
    case halfVolley
    case lob
    case passingShot
    case smash

    var code: String {
        switch self {
        case .dropShot: return "DS"
        case .flat: return "FS"
        case .groundStroke: return "GS"
        case .volley: return "VO"
        case .halfVolley: return "HV"
        case .lob: return "LO"
        case .passingShot: return "PS"
        case .smash: return "SM"
        }
    }

    var extendedCode: String {
        switch self {
        case .dropShot: return "DROP_SHOT"
        case .flat: return "FLAT"
        case .groundStroke: return "GROUND_STROKE"
        case .volley: return "VOLLEY"
        case .halfVolley: return "HALF_VOLLEY"
        case .lob: return "LOB"
        case .passingShot: return "PASSING_SHOT"
        case .smash: return "SMASH"
        }
    }

    var description: String {
        switch self {
        case .dropShot: return "Drop shot"
        case .flat: return "Flat"
        case .groundStroke: return "Ground stroke"
        case .volley: return "Volley"
        case .halfVolley: return "Half volley"
        case .lob: return "Lob"
        case .passingShot: return "Passing shot"
        case .smash: return "Smash"
        }
    }

    static func getShotDetail(shotDetail: String) -> ShotDetail {
        switch shotDetail {
        case "DS": return .dropShot
        case "FS": return .flat
        case "GS": return .groundStroke
        case "VO": return .volley
        case "HV": return .halfVolley
        case "LO": return .lob
        case "PS": return .passingShot
        case "SM": return .smash
        default: return .groundStroke
        }
    }
}

extension ShotDetail: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ShotDetail.getShotDetail(shotDetail: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
