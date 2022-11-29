// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let draw = try Draw(json)

import Foundation

// MARK: - Draw
class Draw: Codable {
    var drawID: String?
    var drawSize: Int?
    var drawStatus, drawStructure: String?
    var endDate: Date?
    var entries: [Entry?]?
    var extensions: [Extension?]?
    var ids: IDS?
    var matchUPS: [MatchUp?]?
    var name: String?
    var noOfRounds: Int?
    var notes: String?
    var rounds: [Round?]?
    var sortOrder: Int?
    var startDate, updated: Date?

    enum CodingKeys: String, CodingKey {
        case drawID = "drawId"
        case drawSize, drawStatus, drawStructure, endDate, entries, extensions, ids
        case matchUPS = "matchUps"
        case name, noOfRounds, notes, rounds, sortOrder, startDate, updated
    }

    init(drawID: String?, drawSize: Int?, drawStatus: String?, drawStructure: String?, endDate: Date?, entries: [Entry?]?, extensions: [Extension?]?, ids: IDS?, matchUPS: [MatchUp?]?, name: String?, noOfRounds: Int?, notes: String?, rounds: [Round?]?, sortOrder: Int?, startDate: Date?, updated: Date?) {
        self.drawID = drawID
        self.drawSize = drawSize
        self.drawStatus = drawStatus
        self.drawStructure = drawStructure
        self.endDate = endDate
        self.entries = entries
        self.extensions = extensions
        self.ids = ids
        self.matchUPS = matchUPS
        self.name = name
        self.noOfRounds = noOfRounds
        self.notes = notes
        self.rounds = rounds
        self.sortOrder = sortOrder
        self.startDate = startDate
        self.updated = updated
    }
}

// MARK: Draw convenience initializers and mutators

extension Draw {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Draw.self, from: data)
        self.init(drawID: me.drawID, drawSize: me.drawSize, drawStatus: me.drawStatus, drawStructure: me.drawStructure, endDate: me.endDate, entries: me.entries, extensions: me.extensions, ids: me.ids, matchUPS: me.matchUPS, name: me.name, noOfRounds: me.noOfRounds, notes: me.notes, rounds: me.rounds, sortOrder: me.sortOrder, startDate: me.startDate, updated: me.updated)
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
        drawID: String?? = nil,
        drawSize: Int?? = nil,
        drawStatus: String?? = nil,
        drawStructure: String?? = nil,
        endDate: Date?? = nil,
        entries: [Entry?]?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        matchUPS: [MatchUp?]?? = nil,
        name: String?? = nil,
        noOfRounds: Int?? = nil,
        notes: String?? = nil,
        rounds: [Round?]?? = nil,
        sortOrder: Int?? = nil,
        startDate: Date?? = nil,
        updated: Date?? = nil
    ) -> Draw {
        return Draw(
            drawID: drawID ?? self.drawID,
            drawSize: drawSize ?? self.drawSize,
            drawStatus: drawStatus ?? self.drawStatus,
            drawStructure: drawStructure ?? self.drawStructure,
            endDate: endDate ?? self.endDate,
            entries: entries ?? self.entries,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            matchUPS: matchUPS ?? self.matchUPS,
            name: name ?? self.name,
            noOfRounds: noOfRounds ?? self.noOfRounds,
            notes: notes ?? self.notes,
            rounds: rounds ?? self.rounds,
            sortOrder: sortOrder ?? self.sortOrder,
            startDate: startDate ?? self.startDate,
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
