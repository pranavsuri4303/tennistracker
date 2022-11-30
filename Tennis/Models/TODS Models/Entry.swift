// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let entry = try? newJSONDecoder().decode(Entry.self, from: jsonData)

import Foundation

// MARK: - Entry
class Entry: Codable, Equatable {

    
    var entryID: String?
    var entryStatus: String?
    var extensions: [Extension?]?
    var finalPosition: String?
    var ids: IDS?
    var losses: Int?
    var name: String?
    var notes: String?
    var participant: Participant?
    var participantType: String?
    var points: String?
    var seed: Int?
    var updated: Date?
    var wins: Int?
    
    internal init(entryID: String? = nil, entryStatus: String? = nil, extensions: [Extension?]? = nil, finalPosition: String? = nil, ids: IDS? = nil, losses: Int? = nil, name: String? = nil, notes: String? = nil, participant: Participant? = nil, participantType: String? = nil, points: String? = nil, seed: Int? = nil, updated: Date? = nil, wins: Int? = nil) {
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
    enum CodingKeys: String, CodingKey {
        case entryID = "entryId"
        case entryStatus = "entryStatus"
        case extensions = "extensions"
        case finalPosition = "finalPosition"
        case ids = "ids"
        case losses = "losses"
        case name = "name"
        case notes = "notes"
        case participant = "participant"
        case participantType = "participantType"
        case points = "points"
        case seed = "seed"
        case updated = "updated"
        case wins = "wins"
    }
    
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.entryID == rhs.entryID &&
        lhs.entryStatus == rhs.entryStatus &&
        lhs.extensions == rhs.extensions &&
        lhs.finalPosition == rhs.finalPosition &&
        lhs.ids == rhs.ids &&
        lhs.losses == rhs.losses &&
        lhs.name == rhs.name &&
        lhs.notes == rhs.notes &&
        lhs.participant == rhs.participant &&
        lhs.participantType == rhs.participantType &&
        lhs.points == rhs.points &&
        lhs.seed == rhs.seed &&
        lhs.updated == rhs.updated &&
        lhs.wins == rhs.wins
    }
}
