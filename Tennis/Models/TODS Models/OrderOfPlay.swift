// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orderOfPlay = try OrderOfPlay(json)

import Foundation

// MARK: - OrderOfPlay
class OrderOfPlay: Codable {
    var extensions: [Extension?]?
    var ids: IDS?
    var localTimeZone, name, notes: String?
    var orderOfPlayID: String?
    var orderOfPlayItems: [OrderOfPlayItem?]?
    var scheduleItem: ScheduleItem?
    var startDate, updated: Date?
    var venue: Venue?

    enum CodingKeys: String, CodingKey {
        case extensions, ids, localTimeZone, name, notes
        case orderOfPlayID = "orderOfPlayId"
        case orderOfPlayItems, scheduleItem, startDate, updated, venue
    }

    init(extensions: [Extension?]?, ids: IDS?, localTimeZone: String?, name: String?, notes: String?, orderOfPlayID: String?, orderOfPlayItems: [OrderOfPlayItem?]?, scheduleItem: ScheduleItem?, startDate: Date?, updated: Date?, venue: Venue?) {
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
}

// MARK: OrderOfPlay convenience initializers and mutators

extension OrderOfPlay {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(OrderOfPlay.self, from: data)
        self.init(extensions: me.extensions, ids: me.ids, localTimeZone: me.localTimeZone, name: me.name, notes: me.notes, orderOfPlayID: me.orderOfPlayID, orderOfPlayItems: me.orderOfPlayItems, scheduleItem: me.scheduleItem, startDate: me.startDate, updated: me.updated, venue: me.venue)
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
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        localTimeZone: String?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        orderOfPlayID: String?? = nil,
        orderOfPlayItems: [OrderOfPlayItem?]?? = nil,
        scheduleItem: ScheduleItem?? = nil,
        startDate: Date?? = nil,
        updated: Date?? = nil,
        venue: Venue?? = nil
    ) -> OrderOfPlay {
        return OrderOfPlay(
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            localTimeZone: localTimeZone ?? self.localTimeZone,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            orderOfPlayID: orderOfPlayID ?? self.orderOfPlayID,
            orderOfPlayItems: orderOfPlayItems ?? self.orderOfPlayItems,
            scheduleItem: scheduleItem ?? self.scheduleItem,
            startDate: startDate ?? self.startDate,
            updated: updated ?? self.updated,
            venue: venue ?? self.venue
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
