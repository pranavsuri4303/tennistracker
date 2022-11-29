// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let entry = try Entry(json)

import Foundation

// MARK: - Entry
class Entry: Codable {
    var entryID: String?
    var entryStatus: String?
    var extensions: [Extension?]?
    var finalPosition: String?
    var ids: IDS?
    var losses: Int?
    var name, notes: String?
    var participant: Participant?
    var participantType, points: String?
    var seed: Int?
    var updated: Date?
    var wins: Int?

    enum CodingKeys: String, CodingKey {
        case entryID = "entryId"
        case entryStatus, extensions, finalPosition, ids, losses, name, notes, participant, participantType, points, seed, updated, wins
    }

    init(entryID: String?, entryStatus: String?, extensions: [Extension?]?, finalPosition: String?, ids: IDS?, losses: Int?, name: String?, notes: String?, participant: Participant?, participantType: String?, points: String?, seed: Int?, updated: Date?, wins: Int?) {
        self.entryID = entryID
        self.entryStatus = entryStatus
        self.extensions = extensions
        self.finalPosition = finalPosition
        self.ids = ids
        self.losses = losses
        self.name = name
        self.notes = notes
        self.participant = participant
        self.participantType = participantType
        self.points = points
        self.seed = seed
        self.updated = updated
        self.wins = wins
    }
}

// MARK: Entry convenience initializers and mutators

extension Entry {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Entry.self, from: data)
        self.init(entryID: me.entryID, entryStatus: me.entryStatus, extensions: me.extensions, finalPosition: me.finalPosition, ids: me.ids, losses: me.losses, name: me.name, notes: me.notes, participant: me.participant, participantType: me.participantType, points: me.points, seed: me.seed, updated: me.updated, wins: me.wins)
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
        entryID: String?? = nil,
        entryStatus: String?? = nil,
        extensions: [Extension?]?? = nil,
        finalPosition: String?? = nil,
        ids: IDS?? = nil,
        losses: Int?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        participant: Participant?? = nil,
        participantType: String?? = nil,
        points: String?? = nil,
        seed: Int?? = nil,
        updated: Date?? = nil,
        wins: Int?? = nil
    ) -> Entry {
        return Entry(
            entryID: entryID ?? self.entryID,
            entryStatus: entryStatus ?? self.entryStatus,
            extensions: extensions ?? self.extensions,
            finalPosition: finalPosition ?? self.finalPosition,
            ids: ids ?? self.ids,
            losses: losses ?? self.losses,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            participant: participant ?? self.participant,
            participantType: participantType ?? self.participantType,
            points: points ?? self.points,
            seed: seed ?? self.seed,
            updated: updated ?? self.updated,
            wins: wins ?? self.wins
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
