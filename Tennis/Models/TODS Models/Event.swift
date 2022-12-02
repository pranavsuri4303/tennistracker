// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let event = try? newJSONDecoder().decode(Event.self, from: jsonData)

import Foundation

// MARK: - Event

class Event: Codable, Equatable {
    var ageCategory: String? //TODO: create parses for age category
    var ageCategoryCutoffDate: Date?
    var ballType: BallType?
    var discipline: Discipline?
    var endDate: Date?
    var entries: [Entry?]?
    var eventID: String?
    var eventLevel: EventLevel?
    var eventType: EventType?
    var extensions: [Extension?]?
    var gender: String?
    var ids: IDS?
    var name: String?
    var notes: String?
    var stages: [Stage?]?
    var startDate: Date?
    var surfaceCategory: SurfaceCategory?
    var tennisOfficials: TennisOfficials?
    var updated: Date?
    var wheelchairClass: WheelchairClass?

    internal init(ageCategory: String? = nil, ageCategoryCutoffDate: Date? = nil, ballType: BallType? = nil, discipline: Discipline? = nil, endDate: Date? = nil, entries: [Entry?]? = nil, eventID: String? = nil, eventLevel: EventLevel? = nil, eventType: EventType? = nil, extensions: [Extension?]? = nil, gender: String? = nil, ids: IDS? = nil, name: String? = nil, notes: String? = nil, stages: [Stage?]? = nil, startDate: Date? = nil, surfaceCategory: SurfaceCategory? = nil, tennisOfficials: TennisOfficials? = nil, updated: Date? = nil, wheelchairClass: WheelchairClass? = nil) {
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
        case ageCategory
        case ageCategoryCutoffDate
        case ballType
        case discipline
        case endDate
        case entries
        case eventID = "eventId"
        case eventLevel
        case eventType
        case extensions
        case gender
        case ids
        case name
        case notes
        case stages
        case startDate
        case surfaceCategory
        case tennisOfficials
        case updated
        case wheelchairClass
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
