// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let venue = try? newJSONDecoder().decode(Venue.self, from: jsonData)

import Foundation

// MARK: - Venue

class Venue: Codable, Equatable {
    var addresses: [Address?]?
    var courts: [Court?]?
    var extensions: [Extension?]?
    var ids: IDS?
    var name: String?
    var notes: String?
    var subVenue: [Venue?]?
    var updated: Date?
    var venueID: String?
    var venueType: String?
    var website: String?

    internal init(addresses: [Address?]?, courts: [Court?]?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, subVenue: [Venue?]?, updated: Date?, venueID: String?, venueType: String?, website: String?) {
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

    enum CodingKeys: String, CodingKey {
        case addresses
        case courts
        case extensions
        case ids
        case name
        case notes
        case subVenue
        case updated
        case venueID = "venueId"
        case venueType
        case website
    }

    static func == (lhs: Venue, rhs: Venue) -> Bool {
        return lhs.addresses == rhs.addresses &&
            lhs.courts == rhs.courts &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.subVenue == rhs.subVenue &&
            lhs.updated == rhs.updated &&
            lhs.venueID == rhs.venueID &&
            lhs.venueType == rhs.venueType &&
            lhs.website == rhs.website
    }
}
