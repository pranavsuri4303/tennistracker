// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let game = try? newJSONDecoder().decode(Game.self, from: jsonData)

import Foundation

// MARK: - Game

class Game: Codable, Equatable {
    var extensions: [Extension?]?
    var gameDuration: String?
    var gameFormat: String?
    var gameNumber: Int?
    var ids: IDS?
    var notes: String?
    var points: [Point?]?
    var timestamp: Date?
    var updated: Date?
    var winningSide: Int?

    internal init(extensions: [Extension?]? = nil, gameDuration: String? = nil, gameFormat: String? = nil, gameNumber: Int? = nil, ids: IDS? = nil, notes: String? = nil, points: [Point?]? = nil, timestamp: Date? = nil, updated: Date? = nil, winningSide: Int? = nil) {
        self.extensions = extensions
        self.gameDuration = gameDuration
        self.gameFormat = gameFormat
        self.gameNumber = gameNumber
        self.ids = ids
        self.notes = notes
        self.points = points
        self.timestamp = timestamp
        self.updated = updated
        self.winningSide = winningSide
    }

    enum CodingKeys: String, CodingKey {
        case extensions
        case gameDuration
        case gameFormat
        case gameNumber
        case ids
        case notes
        case points
        case timestamp
        case updated
        case winningSide
    }

    static func == (lhs: Game, rhs: Game) -> Bool {
        lhs.extensions == rhs.extensions &&
            lhs.gameDuration == rhs.gameDuration &&
            lhs.gameFormat == rhs.gameFormat &&
            lhs.gameNumber == rhs.gameNumber &&
            lhs.ids == rhs.ids &&
            lhs.notes == rhs.notes &&
            lhs.points == rhs.points &&
            lhs.timestamp == rhs.timestamp &&
            lhs.updated == rhs.updated &&
            lhs.winningSide == rhs.winningSide
    }
}
