// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orderOfPlayItem = try? newJSONDecoder().decode(OrderOfPlayItem.self, from: jsonData)

import Foundation

// MARK: - OrderOfPlayItem
class OrderOfPlayItem: Codable, Equatable {
    
    var orderOfPlayItemDescription: String?
    var endDate: Date?
    var endType: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var name: String?
    var notes: String?
    var orderOfPlayItemID: String?
    var previousOrderOfPlayItem: OrderOfPlayItem?
    var scheduleItem: ScheduleItem?
    var startDate: Date?
    var startDelay: Int?
    var startType: String?
    var updated: Date?

    internal init(orderOfPlayItemDescription: String? = nil, endDate: Date? = nil, endType: String? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, name: String? = nil, notes: String? = nil, orderOfPlayItemID: String? = nil, previousOrderOfPlayItem: OrderOfPlayItem? = nil, scheduleItem: ScheduleItem? = nil, startDate: Date? = nil, startDelay: Int? = nil, startType: String? = nil, updated: Date? = nil) {
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
        case endDate = "endDate"
        case endType = "endType"
        case extensions = "extensions"
        case ids = "ids"
        case name = "name"
        case notes = "notes"
        case orderOfPlayItemID = "orderOfPlayItemId"
        case previousOrderOfPlayItem = "previousOrderOfPlayItem"
        case scheduleItem = "scheduleItem"
        case startDate = "startDate"
        case startDelay = "startDelay"
        case startType = "startType"
        case updated = "updated"
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
