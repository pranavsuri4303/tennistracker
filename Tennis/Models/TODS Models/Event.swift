// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let event = try Event(json)

import Foundation

// MARK: - Event
class Event: Codable {
    var ageCategory: String?
    var ageCategoryCutoffDate: Date?
    var ballType, discipline: String?
    var endDate: Date?
    var entries: [Entry?]?
    var eventID: String?
    var eventLevel, eventType: String?
    var extensions: [Extension?]?
    var gender: String?
    var ids: IDS?
    var name, notes: String?
    var stages: [Stage?]?
    var startDate: Date?
    var surfaceCategory: String?
    var tennisOfficials: TennisOfficials?
    var updated: Date?
    var wheelchairClass: String?

    enum CodingKeys: String, CodingKey {
        case ageCategory, ageCategoryCutoffDate, ballType, discipline, endDate, entries
        case eventID = "eventId"
        case eventLevel, eventType, extensions, gender, ids, name, notes, stages, startDate, surfaceCategory, tennisOfficials, updated, wheelchairClass
    }

    init(ageCategory: String?, ageCategoryCutoffDate: Date?, ballType: String?, discipline: String?, endDate: Date?, entries: [Entry?]?, eventID: String?, eventLevel: String?, eventType: String?, extensions: [Extension?]?, gender: String?, ids: IDS?, name: String?, notes: String?, stages: [Stage?]?, startDate: Date?, surfaceCategory: String?, tennisOfficials: TennisOfficials?, updated: Date?, wheelchairClass: String?) {
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
}

// MARK: Event convenience initializers and mutators

extension Event {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Event.self, from: data)
        self.init(ageCategory: me.ageCategory, ageCategoryCutoffDate: me.ageCategoryCutoffDate, ballType: me.ballType, discipline: me.discipline, endDate: me.endDate, entries: me.entries, eventID: me.eventID, eventLevel: me.eventLevel, eventType: me.eventType, extensions: me.extensions, gender: me.gender, ids: me.ids, name: me.name, notes: me.notes, stages: me.stages, startDate: me.startDate, surfaceCategory: me.surfaceCategory, tennisOfficials: me.tennisOfficials, updated: me.updated, wheelchairClass: me.wheelchairClass)
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
        ageCategory: String?? = nil,
        ageCategoryCutoffDate: Date?? = nil,
        ballType: String?? = nil,
        discipline: String?? = nil,
        endDate: Date?? = nil,
        entries: [Entry?]?? = nil,
        eventID: String?? = nil,
        eventLevel: String?? = nil,
        eventType: String?? = nil,
        extensions: [Extension?]?? = nil,
        gender: String?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        stages: [Stage?]?? = nil,
        startDate: Date?? = nil,
        surfaceCategory: String?? = nil,
        tennisOfficials: TennisOfficials?? = nil,
        updated: Date?? = nil,
        wheelchairClass: String?? = nil
    ) -> Event {
        return Event(
            ageCategory: ageCategory ?? self.ageCategory,
            ageCategoryCutoffDate: ageCategoryCutoffDate ?? self.ageCategoryCutoffDate,
            ballType: ballType ?? self.ballType,
            discipline: discipline ?? self.discipline,
            endDate: endDate ?? self.endDate,
            entries: entries ?? self.entries,
            eventID: eventID ?? self.eventID,
            eventLevel: eventLevel ?? self.eventLevel,
            eventType: eventType ?? self.eventType,
            extensions: extensions ?? self.extensions,
            gender: gender ?? self.gender,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            stages: stages ?? self.stages,
            startDate: startDate ?? self.startDate,
            surfaceCategory: surfaceCategory ?? self.surfaceCategory,
            tennisOfficials: tennisOfficials ?? self.tennisOfficials,
            updated: updated ?? self.updated,
            wheelchairClass: wheelchairClass ?? self.wheelchairClass
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
