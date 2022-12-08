// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let side = try? newJSONDecoder().decode(Side.self, from: jsonData)

import Foundation

// MARK: - Side

class Side: Codable, Equatable {
    var extensions: [Extension?]?
    var ids: IDS?
    var notes: String?
    var participant: Participant?
    var players: [Player?]?
    var score: String?
    var sideNumber: Int?
    var updated: Date?

    internal init(extensions: [Extension?]? = nil, ids: IDS? = nil, notes: String? = nil, participant: Participant? = nil, players: [Player?]? = nil, score: String? = nil, sideNumber: Int? = nil, updated: Date? = nil) {
        self.extensions = extensions
        self.ids = ids
        self.notes = notes
        self.participant = participant
        self.players = players
        self.score = score
        self.sideNumber = sideNumber
        self.updated = updated
    }

    enum CodingKeys: String, CodingKey {
        case extensions
        case ids
        case notes
        case participant
        case players
        case score
        case sideNumber
        case updated
    }

    static func == (lhs: Side, rhs: Side) -> Bool {
        return lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.notes == rhs.notes &&
            lhs.participant == rhs.participant &&
            lhs.players == rhs.players &&
            lhs.score == rhs.score &&
            lhs.sideNumber == rhs.sideNumber &&
            lhs.updated == rhs.updated
    }
}
