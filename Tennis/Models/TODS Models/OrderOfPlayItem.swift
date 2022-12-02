// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orderOfPlayItem = try? newJSONDecoder().decode(OrderOfPlayItem.self, from: jsonData)

import Foundation

// MARK: - OrderOfPlayItem

class OrderOfPlayItem: Codable, Equatable {
    var orderOfPlayItemDescription: String?
    var endDate: Date?
    var endType: EndType?
    var extensions: [Extension?]?
    var ids: IDS?
    var name: String?
    var notes: String?
    var orderOfPlayItemID: String?
    var previousOrderOfPlayItem: OrderOfPlayItem?
    var scheduleItem: ScheduleItem?
    var startDate: Date?
    var startDelay: Int?
    var startType: StartType?
    var updated: Date?

    internal init(orderOfPlayItemDescription: String? = nil, endDate: Date? = nil, endType: EndType? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, name: String? = nil, notes: String? = nil, orderOfPlayItemID: String? = nil, previousOrderOfPlayItem: OrderOfPlayItem? = nil, scheduleItem: ScheduleItem? = nil, startDate: Date? = nil, startDelay: Int? = nil, startType: StartType? = nil, updated: Date? = nil) {
        self.orderOfPlayItemDescription = orderOfPlayItemDescription
        self.endDate = endDate
        self.endType = endType
        self.extensions = extensions
        self.ids = ids
        self.name = name
        self.notes = notes
        self.orderOfPlayItemID = orderOfPlayItemID
        self.previousOrderOfPlayItem = previousOrderOfPlayItem
        self.scheduleItem = scheduleItem
        self.startDate = startDate
        self.startDelay = startDelay
        self.startType = startType
        self.updated = updated
    }

    enum CodingKeys: String, CodingKey {
        case orderOfPlayItemDescription = "description"
        case endDate
        case endType
        case extensions
        case ids
        case name
        case notes
        case orderOfPlayItemID = "orderOfPlayItemId"
        case previousOrderOfPlayItem
        case scheduleItem
        case startDate
        case startDelay
        case startType
        case updated
    }

    static func == (lhs: OrderOfPlayItem, rhs: OrderOfPlayItem) -> Bool {
        return lhs.orderOfPlayItemDescription == rhs.orderOfPlayItemDescription &&
            lhs.endDate == rhs.endDate &&
            lhs.endType == rhs.endType &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.orderOfPlayItemID == rhs.orderOfPlayItemID &&
            lhs.previousOrderOfPlayItem == rhs.previousOrderOfPlayItem &&
            lhs.scheduleItem == rhs.scheduleItem &&
            lhs.startDate == rhs.startDate &&
            lhs.startDelay == rhs.startDelay &&
            lhs.startType == rhs.startType &&
            lhs.updated == rhs.updated
    }
}
