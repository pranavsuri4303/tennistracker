// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let court = try? newJSONDecoder().decode(Court.self, from: jsonData)

import Foundation

// MARK: - Court

class Court: Codable, Equatable {
    var altitude: String?
    var courtDimensions: String?
    var courtID: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var latitude: String?
    var longitude: String?
    var notes: String?
    var pace: String?
    var surfaceCategory: SurfaceCategory?
    var surfacedDate: Date?
    var surfaceType: String?
    var updated: Date?

    internal init(altitude: String? = nil, courtDimensions: String? = nil, courtID: String? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, latitude: String? = nil, longitude: String? = nil, notes: String? = nil, pace: String? = nil, surfaceCategory: SurfaceCategory? = nil, surfacedDate: Date? = nil, surfaceType: String? = nil, updated: Date? = nil) {
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

    enum CodingKeys: String, CodingKey {
        case altitude
        case courtDimensions
        case courtID = "courtId"
        case extensions
        case ids
        case latitude
        case longitude
        case notes
        case pace
        case surfaceCategory
        case surfacedDate
        case surfaceType
        case updated
    }

    static func == (lhs: Court, rhs: Court) -> Bool {
        lhs.altitude == rhs.altitude &&
            lhs.courtDimensions == rhs.courtDimensions &&
            lhs.courtID == rhs.courtID &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.latitude == rhs.latitude &&
            lhs.longitude == rhs.longitude &&
            lhs.notes == rhs.notes &&
            lhs.pace == rhs.pace &&
            lhs.surfaceCategory == rhs.surfaceCategory &&
            lhs.surfacedDate == rhs.surfacedDate &&
            lhs.surfaceType == rhs.surfaceType &&
            lhs.updated == rhs.updated
    }
}
