// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let venue = try Venue(json)

import Foundation

// MARK: - Venue
class Venue: Codable {
    var addresses: [Address?]?
    var courts: [Court?]?
    var extensions: [Extension?]?
    var ids: IDS?
    var name, notes: String?
    var subVenue: [Venue?]?
    var updated: Date?
    var venueID: String?
    var venueType, website: String?

    enum CodingKeys: String, CodingKey {
        case addresses, courts, extensions, ids, name, notes, subVenue, updated
        case venueID = "venueId"
        case venueType, website
    }

    init(addresses: [Address?]?, courts: [Court?]?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, subVenue: [Venue?]?, updated: Date?, venueID: String?, venueType: String?, website: String?) {
        self.addresses = addresses
        self.courts = courts
        self.extensions = extensions
        self.ids = ids
        self.name = name
        self.notes = notes
        self.subVenue = subVenue
        self.updated = updated
        self.venueID = venueID
        self.venueType = venueType
        self.website = website
    }
}

// MARK: Venue convenience initializers and mutators

extension Venue {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Venue.self, from: data)
        self.init(addresses: me.addresses, courts: me.courts, extensions: me.extensions, ids: me.ids, name: me.name, notes: me.notes, subVenue: me.subVenue, updated: me.updated, venueID: me.venueID, venueType: me.venueType, website: me.website)
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
        addresses: [Address?]?? = nil,
        courts: [Court?]?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        subVenue: [Venue?]?? = nil,
        updated: Date?? = nil,
        venueID: String?? = nil,
        venueType: String?? = nil,
        website: String?? = nil
    ) -> Venue {
        return Venue(
            addresses: addresses ?? self.addresses,
            courts: courts ?? self.courts,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            subVenue: subVenue ?? self.subVenue,
            updated: updated ?? self.updated,
            venueID: venueID ?? self.venueID,
            venueType: venueType ?? self.venueType,
            website: website ?? self.website
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
