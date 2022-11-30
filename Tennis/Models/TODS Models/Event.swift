// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let event = try? newJSONDecoder().decode(Event.self, from: jsonData)

import Foundation

// MARK: - Event
class Event: Codable, Equatable {
    var ageCategory: String?
    var ageCategoryCutoffDate: Date?
    var ballType: String?
    var discipline: String?
    var endDate: Date?
    var entries: [Entry?]?
    var eventID: String?
    var eventLevel: String?
    var eventType: String?
    var extensions: [Extension?]?
    var gender: String?
    var ids: IDS?
    var name: String?
    var notes: String?
    var stages: [Stage?]?
    var startDate: Date?
    var surfaceCategory: String?
    var tennisOfficials: TennisOfficials?
    var updated: Date?
    var wheelchairClass: String?
    
    internal init(ageCategory: String? = nil, ageCategoryCutoffDate: Date? = nil, ballType: String? = nil, discipline: String? = nil, endDate: Date? = nil, entries: [Entry?]? = nil, eventID: String? = nil, eventLevel: String? = nil, eventType: String? = nil, extensions: [Extension?]? = nil, gender: String? = nil, ids: IDS? = nil, name: String? = nil, notes: String? = nil, stages: [Stage?]? = nil, startDate: Date? = nil, surfaceCategory: String? = nil, tennisOfficials: TennisOfficials? = nil, updated: Date? = nil, wheelchairClass: String? = nil) {
        self.ageCategory = ageCategory
        self.ageCategoryCutoffDate = ageCategoryCutoffDate
        self.ballType = ballType
        self.discipline = discipline
        self.endDate = endDate
        self.entries = entries
        self.eventID = eventID
        self.eventLevel = eventLevel
        self.eventType = eventType
        self.extensions = extensions
        self.gender = gender
        self.ids = ids
        self.name = name
        self.notes = notes
        self.stages = stages
        self.startDate = startDate
        self.surfaceCategory = surfaceCategory
        self.tennisOfficials = tennisOfficials
        self.updated = updated
        self.wheelchairClass = wheelchairClass
    }
    
    enum CodingKeys: String, CodingKey {
        case ageCategory = "ageCategory"
        case ageCategoryCutoffDate = "ageCategoryCutoffDate"
        case ballType = "ballType"
        case discipline = "discipline"
        case endDate = "endDate"
        case entries = "entries"
        case eventID = "eventId"
        case eventLevel = "eventLevel"
        case eventType = "eventType"
        case extensions = "extensions"
        case gender = "gender"
        case ids = "ids"
        case name = "name"
        case notes = "notes"
        case stages = "stages"
        case startDate = "startDate"
        case surfaceCategory = "surfaceCategory"
        case tennisOfficials = "tennisOfficials"
        case updated = "updated"
        case wheelchairClass = "wheelchairClass"
    }
    
    static func == (lhs: Event, rhs: Event) -> Bool {
        return lhs.ageCategory == rhs.ageCategory &&
        lhs.ageCategoryCutoffDate == rhs.ageCategoryCutoffDate &&
        lhs.ballType == rhs.ballType &&
        lhs.discipline == rhs.discipline &&
        lhs.endDate == rhs.endDate &&
        lhs.entries == rhs.entries &&
        lhs.eventID == rhs.eventID &&
        lhs.eventLevel == rhs.eventLevel &&
        lhs.eventType == rhs.eventType &&
        lhs.extensions == rhs.extensions &&
        lhs.gender == rhs.gender &&
        lhs.ids == rhs.ids &&
        lhs.name == rhs.name &&
        lhs.notes == rhs.notes &&
        lhs.stages == rhs.stages &&
        lhs.startDate == rhs.startDate &&
        lhs.surfaceCategory == rhs.surfaceCategory &&
        lhs.tennisOfficials == rhs.tennisOfficials &&
        lhs.updated == rhs.updated &&
        lhs.wheelchairClass == rhs.wheelchairClass
    }
}
