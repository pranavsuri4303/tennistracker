// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orderOfPlayItem = try OrderOfPlayItem(json)

import Foundation

// MARK: - OrderOfPlayItem
class OrderOfPlayItem: Codable {
    var orderOfPlayItemDescription: String?
    var endDate: Date?
    var endType: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var name, notes: String?
    var orderOfPlayItemID: String?
    var previousOrderOfPlayItem: OrderOfPlayItem?
    var scheduleItem: ScheduleItem?
    var startDate: Date?
    var startDelay: Int?
    var startType: String?
    var updated: Date?

    enum CodingKeys: String, CodingKey {
        case orderOfPlayItemDescription = "description"
        case endDate, endType, extensions, ids, name, notes
        case orderOfPlayItemID = "orderOfPlayItemId"
        case previousOrderOfPlayItem, scheduleItem, startDate, startDelay, startType, updated
    }

    init(orderOfPlayItemDescription: String?, endDate: Date?, endType: String?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, orderOfPlayItemID: String?, previousOrderOfPlayItem: OrderOfPlayItem?, scheduleItem: ScheduleItem?, startDate: Date?, startDelay: Int?, startType: String?, updated: Date?) {
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
}

// MARK: OrderOfPlayItem convenience initializers and mutators

extension OrderOfPlayItem {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(OrderOfPlayItem.self, from: data)
        self.init(orderOfPlayItemDescription: me.orderOfPlayItemDescription, endDate: me.endDate, endType: me.endType, extensions: me.extensions, ids: me.ids, name: me.name, notes: me.notes, orderOfPlayItemID: me.orderOfPlayItemID, previousOrderOfPlayItem: me.previousOrderOfPlayItem, scheduleItem: me.scheduleItem, startDate: me.startDate, startDelay: me.startDelay, startType: me.startType, updated: me.updated)
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
        orderOfPlayItemDescription: String?? = nil,
        endDate: Date?? = nil,
        endType: String?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        orderOfPlayItemID: String?? = nil,
        previousOrderOfPlayItem: OrderOfPlayItem?? = nil,
        scheduleItem: ScheduleItem?? = nil,
        startDate: Date?? = nil,
        startDelay: Int?? = nil,
        startType: String?? = nil,
        updated: Date?? = nil
    ) -> OrderOfPlayItem {
        return OrderOfPlayItem(
            orderOfPlayItemDescription: orderOfPlayItemDescription ?? self.orderOfPlayItemDescription,
            endDate: endDate ?? self.endDate,
            endType: endType ?? self.endType,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            orderOfPlayItemID: orderOfPlayItemID ?? self.orderOfPlayItemID,
            previousOrderOfPlayItem: previousOrderOfPlayItem ?? self.previousOrderOfPlayItem,
            scheduleItem: scheduleItem ?? self.scheduleItem,
            startDate: startDate ?? self.startDate,
            startDelay: startDelay ?? self.startDelay,
            startType: startType ?? self.startType,
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
