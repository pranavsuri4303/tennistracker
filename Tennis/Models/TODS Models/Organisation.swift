// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let organisation = try? newJSONDecoder().decode(Organisation.self, from: jsonData)

import Foundation

// MARK: - Organisation

class Organisation: Codable, Equatable {
    var addresses: [Address?]?
    var extensions: [Extension?]?
    var ids: IDS?
    var name: String?
    var notes: String?
    var organisationID: String?
    var organisationType: String?
    var updated: Date?
    var website: String?

    internal init(addresses: [Address?]? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, name: String? = nil, notes: String? = nil, organisationID: String? = nil, organisationType: String? = nil, updated: Date? = nil, website: String? = nil) {
        self.addresses = addresses
        self.extensions = extensions
        self.ids = ids
        self.name = name
        self.notes = notes
        self.organisationID = organisationID
        self.organisationType = organisationType
        self.updated = updated
        self.website = website
    }

    enum CodingKeys: String, CodingKey {
        case addresses
        case extensions
        case ids
        case name
        case notes
        case organisationID = "organisationId"
        case organisationType
        case updated
        case website
    }

    static func == (lhs: Organisation, rhs: Organisation) -> Bool {
        return lhs.addresses == rhs.addresses &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.organisationID == rhs.organisationID &&
            lhs.organisationType == rhs.organisationType &&
            lhs.updated == rhs.updated &&
            lhs.website == rhs.website
    }
}
