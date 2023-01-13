// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tennisOfficials = try? newJSONDecoder().decode(TennisOfficials.self, from: jsonData)

import Foundation

// MARK: - TennisOfficials

struct TennisOfficials: Codable, Equatable {
    var tennisOfficial: [Participant?]?

    internal init(tennisOfficial: [Participant?]? = nil) {
        self.tennisOfficial = tennisOfficial
    }

    enum CodingKeys: String, CodingKey {
        case tennisOfficial
    }

    static func == (lhs: TennisOfficials, rhs: TennisOfficials) -> Bool {
        return lhs.tennisOfficial == rhs.tennisOfficial
    }
}
