// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let shot = try Shot(json)

import Foundation

// MARK: - Shot
class Shot: Codable {
    var bounceAt: String?
    var participant: Participant?
    var returned, shotDetail, shotMadeFrom: String?
    var shotNumber: Int?
    var shotOutcome, shotType, side: String?
    var speed: Double?
    var spin: String?

    init(bounceAt: String?, participant: Participant?, returned: String?, shotDetail: String?, shotMadeFrom: String?, shotNumber: Int?, shotOutcome: String?, shotType: String?, side: String?, speed: Double?, spin: String?) {
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
}

// MARK: Shot convenience initializers and mutators

extension Shot {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Shot.self, from: data)
        self.init(bounceAt: me.bounceAt, participant: me.participant, returned: me.returned, shotDetail: me.shotDetail, shotMadeFrom: me.shotMadeFrom, shotNumber: me.shotNumber, shotOutcome: me.shotOutcome, shotType: me.shotType, side: me.side, speed: me.speed, spin: me.spin)
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
        bounceAt: String?? = nil,
        participant: Participant?? = nil,
        returned: String?? = nil,
        shotDetail: String?? = nil,
        shotMadeFrom: String?? = nil,
        shotNumber: Int?? = nil,
        shotOutcome: String?? = nil,
        shotType: String?? = nil,
        side: String?? = nil,
        speed: Double?? = nil,
        spin: String?? = nil
    ) -> Shot {
        return Shot(
            bounceAt: bounceAt ?? self.bounceAt,
            participant: participant ?? self.participant,
            returned: returned ?? self.returned,
            shotDetail: shotDetail ?? self.shotDetail,
            shotMadeFrom: shotMadeFrom ?? self.shotMadeFrom,
            shotNumber: shotNumber ?? self.shotNumber,
            shotOutcome: shotOutcome ?? self.shotOutcome,
            shotType: shotType ?? self.shotType,
            side: side ?? self.side,
            speed: speed ?? self.speed,
            spin: spin ?? self.spin
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
