// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let draw = try? newJSONDecoder().decode(Draw.self, from: jsonData)

import Foundation

// MARK: - Draw

struct Draw: Codable, Equatable {
    var drawID: String?
    var drawSize: Int?
    var drawStatus: DrawStatus?
    var drawStructure: DrawStructure?
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
    var startDate: Date?
    var updated: Date?

    internal init(drawID: String? = nil, drawSize: Int? = nil, drawStatus: DrawStatus? = nil, drawStructure: DrawStructure? = nil, endDate: Date? = nil, entries: [Entry?]? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, matchUPS: [MatchUp?]? = nil, name: String? = nil, noOfRounds: Int? = nil, notes: String? = nil, rounds: [Round?]? = nil, sortOrder: Int? = nil, startDate: Date? = nil, updated: Date? = nil) {
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

    enum CodingKeys: String, CodingKey {
        case drawID = "drawId"
        case drawSize
        case drawStatus
        case drawStructure
        case endDate
        case entries
        case extensions
        case ids
        case matchUPS = "matchUps"
        case name
        case noOfRounds
        case notes
        case rounds
        case sortOrder
        case startDate
        case updated
    }

    static func == (lhs: Draw, rhs: Draw) -> Bool {
        return lhs.drawID == rhs.drawID &&
            lhs.drawSize == rhs.drawSize &&
            lhs.drawStatus == rhs.drawStatus &&
            lhs.drawStructure == rhs.drawStructure &&
            lhs.endDate == rhs.endDate &&
            lhs.entries == rhs.entries &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.matchUPS == rhs.matchUPS &&
            lhs.name == rhs.name &&
            lhs.noOfRounds == rhs.noOfRounds &&
            lhs.notes == rhs.notes &&
            lhs.rounds == rhs.rounds &&
            lhs.sortOrder == rhs.sortOrder &&
            lhs.startDate == rhs.startDate &&
            lhs.updated == rhs.updated
    }
}
