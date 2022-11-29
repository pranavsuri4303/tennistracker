// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let scheduleItem = try ScheduleItem(json)

import Foundation

// MARK: - ScheduleItem
class ScheduleItem: Codable {
    var scheduleItemDescription: String?
    var endDate: Date?
    var extensions: [Extension?]?
    var ids: IDS?
    var localTimeZone, name, notes: String?
    var parentScheduleItem: ScheduleItem?
    var scheduleItemID: String?
    var startDate, updated: Date?

    enum CodingKeys: String, CodingKey {
        case scheduleItemDescription = "description"
        case endDate, extensions, ids, localTimeZone, name, notes, parentScheduleItem
        case scheduleItemID = "scheduleItemId"
        case startDate, updated
    }

    init(scheduleItemDescription: String?, endDate: Date?, extensions: [Extension?]?, ids: IDS?, localTimeZone: String?, name: String?, notes: String?, parentScheduleItem: ScheduleItem?, scheduleItemID: String?, startDate: Date?, updated: Date?) {
        self.scheduleItemDescription = scheduleItemDescription
        self.endDate = endDate
        self.extensions = extensions
        self.ids = ids
        self.localTimeZone = localTimeZone
        self.name = name
        self.notes = notes
        self.parentScheduleItem = parentScheduleItem
        self.scheduleItemID = scheduleItemID
        self.startDate = startDate
        self.updated = updated
    }
}

// MARK: ScheduleItem convenience initializers and mutators

extension ScheduleItem {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(ScheduleItem.self, from: data)
        self.init(scheduleItemDescription: me.scheduleItemDescription, endDate: me.endDate, extensions: me.extensions, ids: me.ids, localTimeZone: me.localTimeZone, name: me.name, notes: me.notes, parentScheduleItem: me.parentScheduleItem, scheduleItemID: me.scheduleItemID, startDate: me.startDate, updated: me.updated)
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
        scheduleItemDescription: String?? = nil,
        endDate: Date?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        localTimeZone: String?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        parentScheduleItem: ScheduleItem?? = nil,
        scheduleItemID: String?? = nil,
        startDate: Date?? = nil,
        updated: Date?? = nil
    ) -> ScheduleItem {
        return ScheduleItem(
            scheduleItemDescription: scheduleItemDescription ?? self.scheduleItemDescription,
            endDate: endDate ?? self.endDate,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            localTimeZone: localTimeZone ?? self.localTimeZone,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            parentScheduleItem: parentScheduleItem ?? self.parentScheduleItem,
            scheduleItemID: scheduleItemID ?? self.scheduleItemID,
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
