// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let game = try Game(json)

import Foundation

// MARK: - Game
class Game: Codable {
    var extensions: [Extension?]?
    var gameDuration, gameFormat: String?
    var gameNumber: Int?
    var ids: IDS?
    var notes: String?
    var points: [Point?]?
    var timestamp, updated: Date?
    var winningSide: Int?

    init(extensions: [Extension?]?, gameDuration: String?, gameFormat: String?, gameNumber: Int?, ids: IDS?, notes: String?, points: [Point?]?, timestamp: Date?, updated: Date?, winningSide: Int?) {
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
}

// MARK: Game convenience initializers and mutators

extension Game {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Game.self, from: data)
        self.init(extensions: me.extensions, gameDuration: me.gameDuration, gameFormat: me.gameFormat, gameNumber: me.gameNumber, ids: me.ids, notes: me.notes, points: me.points, timestamp: me.timestamp, updated: me.updated, winningSide: me.winningSide)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        extensions: [Extension?]?? = nil,
        gameDuration: String?? = nil,
        gameFormat: String?? = nil,
        gameNumber: Int?? = nil,
        ids: IDS?? = nil,
        notes: String?? = nil,
        points: [Point?]?? = nil,
        timestamp: Date?? = nil,
        updated: Date?? = nil,
        winningSide: Int?? = nil
    ) -> Game {
        return Game(
            extensions: extensions ?? self.extensions,
            gameDuration: gameDuration ?? self.gameDuration,
            gameFormat: gameFormat ?? self.gameFormat,
            gameNumber: gameNumber ?? self.gameNumber,
            ids: ids ?? self.ids,
            notes: notes ?? self.notes,
            points: points ?? self.points,
            timestamp: timestamp ?? self.timestamp,
            updated: updated ?? self.updated,
            winningSide: winningSide ?? self.winningSide
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
