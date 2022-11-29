// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let participant = try Participant(json)

import Foundation

// MARK: - Participant
class Participant: Codable {
    var extensions: [Extension?]?
    var ids: IDS?
    var members: [Participant?]?
    var name, notes: String?
    var participantID: String?
    var participantRole, participantStatus, participantType: String?
    var person: Person?
    var preferredGivenName, representing: String?
    var team: Team?
    var updated: Date?

    enum CodingKeys: String, CodingKey {
        case extensions, ids, members, name, notes
        case participantID = "participantId"
        case participantRole, participantStatus, participantType, person, preferredGivenName, representing, team, updated
    }

    init(extensions: [Extension?]?, ids: IDS?, members: [Participant?]?, name: String?, notes: String?, participantID: String?, participantRole: String?, participantStatus: String?, participantType: String?, person: Person?, preferredGivenName: String?, representing: String?, team: Team?, updated: Date?) {
        self.extensions = extensions
        self.ids = ids
        self.members = members
        self.name = name
        self.notes = notes
        self.participantID = participantID
        self.participantRole = participantRole
        self.participantStatus = participantStatus
        self.participantType = participantType
        self.person = person
        self.preferredGivenName = preferredGivenName
        self.representing = representing
        self.team = team
        self.updated = updated
    }
}

// MARK: Participant convenience initializers and mutators

extension Participant {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Participant.self, from: data)
        self.init(extensions: me.extensions, ids: me.ids, members: me.members, name: me.name, notes: me.notes, participantID: me.participantID, participantRole: me.participantRole, participantStatus: me.participantStatus, participantType: me.participantType, person: me.person, preferredGivenName: me.preferredGivenName, representing: me.representing, team: me.team, updated: me.updated)
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
        members: [Participant?]?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        participantID: String?? = nil,
        participantRole: String?? = nil,
        participantStatus: String?? = nil,
        participantType: String?? = nil,
        person: Person?? = nil,
        preferredGivenName: String?? = nil,
        representing: String?? = nil,
        team: Team?? = nil,
        updated: Date?? = nil
    ) -> Participant {
        return Participant(
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            members: members ?? self.members,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            participantID: participantID ?? self.participantID,
            participantRole: participantRole ?? self.participantRole,
            participantStatus: participantStatus ?? self.participantStatus,
            participantType: participantType ?? self.participantType,
            person: person ?? self.person,
            preferredGivenName: preferredGivenName ?? self.preferredGivenName,
            representing: representing ?? self.representing,
            team: team ?? self.team,
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
