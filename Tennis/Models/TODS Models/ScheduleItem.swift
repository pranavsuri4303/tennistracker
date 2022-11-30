// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let scheduleItem = try? newJSONDecoder().decode(ScheduleItem.self, from: jsonData)

import Foundation

// MARK: - ScheduleItem
class ScheduleItem: Codable, Equatable {
    var scheduleItemDescription: String?
    var endDate: Date?
    var extensions: [Extension?]?
    var ids: IDS?
    var localTimeZone: String?
    var name: String?
    var notes: String?
    var parentScheduleItem: ScheduleItem?
    var scheduleItemID: String?
    var startDate: Date?
    var updated: Date?

    internal init(scheduleItemDescription: String?, endDate: Date?, extensions: [Extension?]?, ids: IDS?, localTimeZone: String?, name: String?, notes: String?, parentScheduleItem: ScheduleItem?, scheduleItemID: String?, startDate: Date?, updated: Date?) {
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
    
    enum CodingKeys: String, CodingKey {
        case scheduleItemDescription = "description"
        case endDate = "endDate"
        case extensions = "extensions"
        case ids = "ids"
        case localTimeZone = "localTimeZone"
        case name = "name"
        case notes = "notes"
        case parentScheduleItem = "parentScheduleItem"
        case scheduleItemID = "scheduleItemId"
        case startDate = "startDate"
        case updated = "updated"
    }

    static func == (lhs: ScheduleItem, rhs: ScheduleItem) -> Bool {
        return lhs.scheduleItemDescription == rhs.scheduleItemDescription &&
        lhs.endDate == rhs.endDate &&
        lhs.extensions == rhs.extensions &&
        lhs.ids == rhs.ids &&
        lhs.localTimeZone == rhs.localTimeZone &&
        lhs.name == rhs.name &&
        lhs.notes == rhs.notes &&
        lhs.parentScheduleItem == rhs.parentScheduleItem &&
        lhs.scheduleItemID == rhs.scheduleItemID &&
        lhs.startDate == rhs.startDate &&
        lhs.updated == rhs.updated
    }
}
