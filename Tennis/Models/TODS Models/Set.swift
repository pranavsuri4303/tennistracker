// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let set = try Set(json)

import Foundation

// MARK: - Set
class Set: Codable {
    var extensions: [Extension?]?
    var games: [Game?]?
    var ids: IDS?
    var notes, setDuration, setFormat: String?
    var setNumber: Int?
    var side1Score, side1TieBreakScore, side2Score, side2TieBreakScore: Int?
    var timestamp, updated: Date?
    var winningSide: Int?

    init(extensions: [Extension?]?, games: [Game?]?, ids: IDS?, notes: String?, setDuration: String?, setFormat: String?, setNumber: Int?, side1Score: Int?, side1TieBreakScore: Int?, side2Score: Int?, side2TieBreakScore: Int?, timestamp: Date?, updated: Date?, winningSide: Int?) {
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
}

// MARK: Set convenience initializers and mutators

extension Set {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Set.self, from: data)
        self.init(extensions: me.extensions, games: me.games, ids: me.ids, notes: me.notes, setDuration: me.setDuration, setFormat: me.setFormat, setNumber: me.setNumber, side1Score: me.side1Score, side1TieBreakScore: me.side1TieBreakScore, side2Score: me.side2Score, side2TieBreakScore: me.side2TieBreakScore, timestamp: me.timestamp, updated: me.updated, winningSide: me.winningSide)
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
        games: [Game?]?? = nil,
        ids: IDS?? = nil,
        notes: String?? = nil,
        setDuration: String?? = nil,
        setFormat: String?? = nil,
        setNumber: Int?? = nil,
        side1Score: Int?? = nil,
        side1TieBreakScore: Int?? = nil,
        side2Score: Int?? = nil,
        side2TieBreakScore: Int?? = nil,
        timestamp: Date?? = nil,
        updated: Date?? = nil,
        winningSide: Int?? = nil
    ) -> Set {
        return Set(
            extensions: extensions ?? self.extensions,
            games: games ?? self.games,
            ids: ids ?? self.ids,
            notes: notes ?? self.notes,
            setDuration: setDuration ?? self.setDuration,
            setFormat: setFormat ?? self.setFormat,
            setNumber: setNumber ?? self.setNumber,
            side1Score: side1Score ?? self.side1Score,
            side1TieBreakScore: side1TieBreakScore ?? self.side1TieBreakScore,
            side2Score: side2Score ?? self.side2Score,
            side2TieBreakScore: side2TieBreakScore ?? self.side2TieBreakScore,
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
