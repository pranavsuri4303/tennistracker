// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tournamentGroup = try? newJSONDecoder().decode(TournamentGroup.self, from: jsonData)

import Foundation

// MARK: - TournamentGroup

struct TournamentGroup: Codable, Equatable {
    var group: String?

    internal init(group: String?) {
        self.group = group
    }

    enum CodingKeys: String, CodingKey {
        case group
    }

    static func == (lhs: TournamentGroup, rhs: TournamentGroup) -> Bool {
        return lhs.group == rhs.group
    }
}
