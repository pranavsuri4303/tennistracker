// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let set = try? newJSONDecoder().decode(Set.self, from: jsonData)

import Foundation

// MARK: - Set

class Sett: Codable, Equatable {
    var extensions: [Extension?]?
    var games: [Game?]?
    var ids: IDS?
    var notes: String?
    var setDuration: String?
    var setFormat: String?
    var setNumber: Int?
    var side1Score: Int?
    var side1TieBreakScore: Int?
    var side2Score: Int?
    var side2TieBreakScore: Int?
    var timestamp: Date?
    var updated: Date?
    var winningSide: Int?

    internal init(extensions: [Extension?]? = nil, games: [Game?]? = nil, ids: IDS? = nil, notes: String? = nil, setDuration: String? = nil, setFormat: String? = nil, setNumber: Int? = nil, side1Score: Int? = nil, side1TieBreakScore: Int? = nil, side2Score: Int? = nil, side2TieBreakScore: Int? = nil, timestamp: Date? = nil, updated: Date? = nil, winningSide: Int? = nil) {
        self.extensions = extensions
        self.games = games
        self.ids = ids
        self.notes = notes
        self.setDuration = setDuration
        self.setFormat = setFormat
        self.setNumber = setNumber
        self.side1Score = side1Score
        self.side1TieBreakScore = side1TieBreakScore
        self.side2Score = side2Score
        self.side2TieBreakScore = side2TieBreakScore
        self.timestamp = timestamp
        self.updated = updated
        self.winningSide = winningSide
    }

    enum CodingKeys: String, CodingKey {
        case extensions
        case games
        case ids
        case notes
        case setDuration
        case setFormat
        case setNumber
        case side1Score
        case side1TieBreakScore
        case side2Score
        case side2TieBreakScore
        case timestamp
        case updated
        case winningSide
    }

    static func == (lhs: Sett, rhs: Sett) -> Bool {
        return lhs.extensions == rhs.extensions &&
            lhs.games == rhs.games &&
            lhs.ids == rhs.ids &&
            lhs.notes == rhs.notes &&
            lhs.setDuration == rhs.setDuration &&
            lhs.setFormat == rhs.setFormat &&
            lhs.setNumber == rhs.setNumber &&
            lhs.side1Score == rhs.side1Score &&
            lhs.side1TieBreakScore == rhs.side1TieBreakScore &&
            lhs.side2Score == rhs.side2Score &&
            lhs.side2TieBreakScore == rhs.side2TieBreakScore &&
            lhs.timestamp == rhs.timestamp &&
            lhs.updated == rhs.updated &&
            lhs.winningSide == rhs.winningSide
    }
}
