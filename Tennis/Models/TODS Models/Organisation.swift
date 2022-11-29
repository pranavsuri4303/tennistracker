// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let organisation = try Organisation(json)

import Foundation

// MARK: - Organisation
class Organisation: Codable {
    var addresses: [Address?]?
    var extensions: [Extension?]?
    var ids: IDS?
    var name, notes: String?
    var organisationID: String?
    var organisationType: String?
    var updated: Date?
    var website: String?

    enum CodingKeys: String, CodingKey {
        case addresses, extensions, ids, name, notes
        case organisationID = "organisationId"
        case organisationType, updated, website
    }

    init(addresses: [Address?]?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, organisationID: String?, organisationType: String?, updated: Date?, website: String?) {
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
}

// MARK: Organisation convenience initializers and mutators

extension Organisation {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Organisation.self, from: data)
        self.init(addresses: me.addresses, extensions: me.extensions, ids: me.ids, name: me.name, notes: me.notes, organisationID: me.organisationID, organisationType: me.organisationType, updated: me.updated, website: me.website)
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
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        organisationID: String?? = nil,
        organisationType: String?? = nil,
        updated: Date?? = nil,
        website: String?? = nil
    ) -> Organisation {
        return Organisation(
            addresses: addresses ?? self.addresses,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            organisationID: organisationID ?? self.organisationID,
            organisationType: organisationType ?? self.organisationType,
            updated: updated ?? self.updated,
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
