// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let participant = try? newJSONDecoder().decode(Participant.self, from: jsonData)

import Foundation

// MARK: - Participant

class Participant: Codable, Equatable {
    var extensions: [Extension?]?
    var ids: IDS?
    var members: [Participant?]?
    var name: String?
    var notes: String?
    var participantID: String?
    var participantRole: String?
    var participantStatus: String?
    var participantType: String?
    var person: Person?
    var preferredGivenName: String?
    var representing: String?
    var team: Team?
    var updated: Date?

    internal init(extensions: [Extension?]?, ids: IDS?, members: [Participant?]?, name: String?, notes: String?, participantID: String?, participantRole: String?, participantStatus: String?, participantType: String?, person: Person?, preferredGivenName: String?, representing: String?, team: Team?, updated: Date?) {
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

    enum CodingKeys: String, CodingKey {
        case extensions
        case ids
        case members
        case name
        case notes
        case participantID = "participantId"
        case participantRole
        case participantStatus
        case participantType
        case person
        case preferredGivenName
        case representing
        case team
        case updated
    }

    static func == (lhs: Participant, rhs: Participant) -> Bool {
        return lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.members == rhs.members &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.participantID == rhs.participantID &&
            lhs.participantRole == rhs.participantRole &&
            lhs.participantStatus == rhs.participantStatus &&
            lhs.participantType == rhs.participantType &&
            lhs.person == rhs.person &&
            lhs.preferredGivenName == rhs.preferredGivenName &&
            lhs.representing == rhs.representing &&
            lhs.team == rhs.team &&
            lhs.updated == rhs.updated
    }
}
