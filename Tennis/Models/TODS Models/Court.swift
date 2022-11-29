// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let court = try Court(json)

import Foundation

// MARK: - Court
class Court: Codable {
    var altitude, courtDimensions: String?
    var courtID: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var latitude, longitude, notes, pace: String?
    var surfaceCategory: String?
    var surfacedDate: Date?
    var surfaceType: String?
    var updated: Date?

    enum CodingKeys: String, CodingKey {
        case altitude, courtDimensions
        case courtID = "courtId"
        case extensions, ids, latitude, longitude, notes, pace, surfaceCategory, surfacedDate, surfaceType, updated
    }

    init(altitude: String?, courtDimensions: String?, courtID: String?, extensions: [Extension?]?, ids: IDS?, latitude: String?, longitude: String?, notes: String?, pace: String?, surfaceCategory: String?, surfacedDate: Date?, surfaceType: String?, updated: Date?) {
        self.altitude = altitude
        self.courtDimensions = courtDimensions
        self.courtID = courtID
        self.extensions = extensions
        self.ids = ids
        self.latitude = latitude
        self.longitude = longitude
        self.notes = notes
        self.pace = pace
        self.surfaceCategory = surfaceCategory
        self.surfacedDate = surfacedDate
        self.surfaceType = surfaceType
        self.updated = updated
    }
}

// MARK: Court convenience initializers and mutators

extension Court {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Court.self, from: data)
        self.init(altitude: me.altitude, courtDimensions: me.courtDimensions, courtID: me.courtID, extensions: me.extensions, ids: me.ids, latitude: me.latitude, longitude: me.longitude, notes: me.notes, pace: me.pace, surfaceCategory: me.surfaceCategory, surfacedDate: me.surfacedDate, surfaceType: me.surfaceType, updated: me.updated)
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
        altitude: String?? = nil,
        courtDimensions: String?? = nil,
        courtID: String?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        latitude: String?? = nil,
        longitude: String?? = nil,
        notes: String?? = nil,
        pace: String?? = nil,
        surfaceCategory: String?? = nil,
        surfacedDate: Date?? = nil,
        surfaceType: String?? = nil,
        updated: Date?? = nil
    ) -> Court {
        return Court(
            altitude: altitude ?? self.altitude,
            courtDimensions: courtDimensions ?? self.courtDimensions,
            courtID: courtID ?? self.courtID,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            latitude: latitude ?? self.latitude,
            longitude: longitude ?? self.longitude,
            notes: notes ?? self.notes,
            pace: pace ?? self.pace,
            surfaceCategory: surfaceCategory ?? self.surfaceCategory,
            surfacedDate: surfacedDate ?? self.surfacedDate,
            surfaceType: surfaceType ?? self.surfaceType,
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
