// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let team = try Team(json)

import Foundation

// MARK: - Team
class Team: Codable {
    var extensions: [Extension?]?
    var gender: String?
    var ids: IDS?
    var name, nativeTeamName, notes: String?
    var onlineProfiles: [OnlineProfile?]?
    var organisation: Organisation?
    var otherNames, previousNames: String?
    var teamID: String?
    var updated: Date?

    enum CodingKeys: String, CodingKey {
        case extensions, gender, ids, name, nativeTeamName, notes, onlineProfiles, organisation, otherNames, previousNames
        case teamID = "teamId"
        case updated
    }

    init(extensions: [Extension?]?, gender: String?, ids: IDS?, name: String?, nativeTeamName: String?, notes: String?, onlineProfiles: [OnlineProfile?]?, organisation: Organisation?, otherNames: String?, previousNames: String?, teamID: String?, updated: Date?) {
        self.extensions = extensions
        self.gender = gender
        self.ids = ids
        self.name = name
        self.nativeTeamName = nativeTeamName
        self.notes = notes
        self.onlineProfiles = onlineProfiles
        self.organisation = organisation
        self.otherNames = otherNames
        self.previousNames = previousNames
        self.teamID = teamID
        self.updated = updated
    }
}

// MARK: Team convenience initializers and mutators

extension Team {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Team.self, from: data)
        self.init(extensions: me.extensions, gender: me.gender, ids: me.ids, name: me.name, nativeTeamName: me.nativeTeamName, notes: me.notes, onlineProfiles: me.onlineProfiles, organisation: me.organisation, otherNames: me.otherNames, previousNames: me.previousNames, teamID: me.teamID, updated: me.updated)
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
        gender: String?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        nativeTeamName: String?? = nil,
        notes: String?? = nil,
        onlineProfiles: [OnlineProfile?]?? = nil,
        organisation: Organisation?? = nil,
        otherNames: String?? = nil,
        previousNames: String?? = nil,
        teamID: String?? = nil,
        updated: Date?? = nil
    ) -> Team {
        return Team(
            extensions: extensions ?? self.extensions,
            gender: gender ?? self.gender,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            nativeTeamName: nativeTeamName ?? self.nativeTeamName,
            notes: notes ?? self.notes,
            onlineProfiles: onlineProfiles ?? self.onlineProfiles,
            organisation: organisation ?? self.organisation,
            otherNames: otherNames ?? self.otherNames,
            previousNames: previousNames ?? self.previousNames,
            teamID: teamID ?? self.teamID,
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
