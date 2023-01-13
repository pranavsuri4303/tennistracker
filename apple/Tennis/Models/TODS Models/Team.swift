// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let team = try? newJSONDecoder().decode(Team.self, from: jsonData)

import Foundation

// MARK: - Team

struct Team: Codable, Equatable {
    var extensions: [Extension?]?
    var gender: Gender?
    var ids: IDS?
    var name: String?
    var nativeTeamName: String?
    var notes: String?
    var onlineProfiles: [OnlineProfile?]?
    var organisation: Organisation?
    var otherNames: String?
    var previousNames: String?
    var teamID: String?
    var updated: Date?

    internal init(extensions: [Extension?]?, gender: Gender?, ids: IDS?, name: String?, nativeTeamName: String?, notes: String?, onlineProfiles: [OnlineProfile?]?, organisation: Organisation?, otherNames: String?, previousNames: String?, teamID: String?, updated: Date?) {
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

    enum CodingKeys: String, CodingKey {
        case extensions
        case gender
        case ids
        case name
        case nativeTeamName
        case notes
        case onlineProfiles
        case organisation
        case otherNames
        case previousNames
        case teamID = "teamId"
        case updated
    }

    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.extensions == rhs.extensions &&
            lhs.gender == rhs.gender &&
            lhs.ids == rhs.ids &&
            lhs.name == rhs.name &&
            lhs.nativeTeamName == rhs.nativeTeamName &&
            lhs.notes == rhs.notes &&
            lhs.onlineProfiles == rhs.onlineProfiles &&
            lhs.organisation == rhs.organisation &&
            lhs.otherNames == rhs.otherNames &&
            lhs.previousNames == rhs.previousNames &&
            lhs.teamID == rhs.teamID &&
            lhs.updated == rhs.updated
    }
}
