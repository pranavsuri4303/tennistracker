// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orderOfPlay = try? newJSONDecoder().decode(OrderOfPlay.self, from: jsonData)

import Foundation

// MARK: - OrderOfPlay

class OrderOfPlay: Codable, Equatable {
    var extensions: [Extension?]?
    var ids: IDS?
    var localTimeZone: String?
    var name: String?
    var notes: String?
    var orderOfPlayID: String?
    var orderOfPlayItems: [OrderOfPlayItem?]?
    var scheduleItem: ScheduleItem?
    var startDate: Date?
    var updated: Date?
    var venue: Venue?

    internal init(extensions: [Extension?]? = nil, ids: IDS? = nil, localTimeZone: String? = nil, name: String? = nil, notes: String? = nil, orderOfPlayID: String? = nil, orderOfPlayItems: [OrderOfPlayItem?]? = nil, scheduleItem: ScheduleItem? = nil, startDate: Date? = nil, updated: Date? = nil, venue: Venue? = nil) {
        self.extensions = extensions
        self.ids = ids
        self.localTimeZone = localTimeZone
        self.name = name
        self.notes = notes
        self.orderOfPlayID = orderOfPlayID
        self.orderOfPlayItems = orderOfPlayItems
        self.scheduleItem = scheduleItem
        self.startDate = startDate
        self.updated = updated
        self.venue = venue
    }

    enum CodingKeys: String, CodingKey {
        case extensions
        case ids
        case localTimeZone
        case name
        case notes
        case orderOfPlayID = "orderOfPlayId"
        case orderOfPlayItems
        case scheduleItem
        case startDate
        case updated
        case venue
    }

    static func == (lhs: OrderOfPlay, rhs: OrderOfPlay) -> Bool {
        return lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.localTimeZone == rhs.localTimeZone &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.orderOfPlayID == rhs.orderOfPlayID &&
            lhs.orderOfPlayItems == rhs.orderOfPlayItems &&
            lhs.scheduleItem == rhs.scheduleItem &&
            lhs.startDate == rhs.startDate &&
            lhs.updated == rhs.updated &&
            lhs.venue == rhs.venue
    }
}
