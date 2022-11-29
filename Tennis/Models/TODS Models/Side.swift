// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let side = try Side(json)

import Foundation

// MARK: - Side
class Side: Codable {
    var extensions: [Extension?]?
    var ids: IDS?
    var notes: String?
    var participant: Participant?
    var players: [Player?]?
    var score: String?
    var sideNumber: Int?
    var updated: Date?

    init(extensions: [Extension?]?, ids: IDS?, notes: String?, participant: Participant?, players: [Player?]?, score: String?, sideNumber: Int?, updated: Date?) {
        self.extensions = extensions
        self.ids = ids
        self.notes = notes
        self.participant = participant
        self.players = players
        self.score = score
        self.sideNumber = sideNumber
        self.updated = updated
    }
}

// MARK: Side convenience initializers and mutators

extension Side {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Side.self, from: data)
        self.init(extensions: me.extensions, ids: me.ids, notes: me.notes, participant: me.participant, players: me.players, score: me.score, sideNumber: me.sideNumber, updated: me.updated)
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
        ids: IDS?? = nil,
        notes: String?? = nil,
        participant: Participant?? = nil,
        players: [Player?]?? = nil,
        score: String?? = nil,
        sideNumber: Int?? = nil,
        updated: Date?? = nil
    ) -> Side {
        return Side(
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            notes: notes ?? self.notes,
            participant: participant ?? self.participant,
            players: players ?? self.players,
            score: score ?? self.score,
            sideNumber: sideNumber ?? self.sideNumber,
            updated: updated ?? self.updated
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
