// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let shot = try? newJSONDecoder().decode(Shot.self, from: jsonData)

import Foundation

// MARK: - Shot

class Shot: Codable, Equatable {
    var bounceAt: String?
    var participant: Participant?
    var returned: String? // Yes or No
    var shotDetail: ShotDetail?
    var shotMadeFrom: ShotMadeFrom?
    var shotNumber: Int?
    var shotOutcome: ShotOutcome?
    var shotType: ShotType?
    var side: String?
    var speed: Double?
    var spin: String?

    internal init(bounceAt: String? = nil, participant: Participant? = nil, returned: String? = nil, shotDetail: ShotDetail? = nil, shotMadeFrom: ShotMadeFrom? = nil, shotNumber: Int? = nil, shotOutcome: ShotOutcome? = nil, shotType: ShotType? = nil, side: String? = nil, speed: Double? = nil, spin: String? = nil) {
        self.bounceAt = bounceAt
        self.participant = participant
        self.returned = returned
        self.shotDetail = shotDetail
        self.shotMadeFrom = shotMadeFrom
        self.shotNumber = shotNumber
        self.shotOutcome = shotOutcome
        self.shotType = shotType
        self.side = side
        self.speed = speed
        self.spin = spin
    }

    enum CodingKeys: String, CodingKey {
        case bounceAt
        case participant
        case returned
        case shotDetail
        case shotMadeFrom
        case shotNumber
        case shotOutcome
        case shotType
        case side
        case speed
        case spin
    }

    static func == (lhs: Shot, rhs: Shot) -> Bool {
        return lhs.bounceAt == rhs.bounceAt &&
            lhs.participant == rhs.participant &&
            lhs.returned == rhs.returned &&
            lhs.shotDetail == rhs.shotDetail &&
            lhs.shotMadeFrom == rhs.shotMadeFrom &&
            lhs.shotNumber == rhs.shotNumber &&
            lhs.shotOutcome == rhs.shotOutcome &&
            lhs.shotType == rhs.shotType &&
            lhs.side == rhs.side &&
            lhs.speed == rhs.speed &&
            lhs.spin == rhs.spin
    }
}
