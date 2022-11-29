// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let biographicalInformation = try BiographicalInformation(json)

import Foundation

// MARK: - BiographicalInformation
class BiographicalInformation: Codable {
    var ageBeganTennis, ageTurnedPro: Int?
    var birthCountryCode: String?
    var club: Organisation?
    var coach: Person?
    var doublePlayingHand: String?
    var height: Double?
    var placeOfResidence, playingHand, residenceCountryCode: String?
    var weight: Double?

    init(ageBeganTennis: Int?, ageTurnedPro: Int?, birthCountryCode: String?, club: Organisation?, coach: Person?, doublePlayingHand: String?, height: Double?, placeOfResidence: String?, playingHand: String?, residenceCountryCode: String?, weight: Double?) {
        self.ageBeganTennis = ageBeganTennis
        self.ageTurnedPro = ageTurnedPro
        self.birthCountryCode = birthCountryCode
        self.club = club
        self.coach = coach
        self.doublePlayingHand = doublePlayingHand
        self.height = height
        self.placeOfResidence = placeOfResidence
        self.playingHand = playingHand
        self.residenceCountryCode = residenceCountryCode
        self.weight = weight
    }
}

// MARK: BiographicalInformation convenience initializers and mutators

extension BiographicalInformation {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(BiographicalInformation.self, from: data)
        self.init(ageBeganTennis: me.ageBeganTennis, ageTurnedPro: me.ageTurnedPro, birthCountryCode: me.birthCountryCode, club: me.club, coach: me.coach, doublePlayingHand: me.doublePlayingHand, height: me.height, placeOfResidence: me.placeOfResidence, playingHand: me.playingHand, residenceCountryCode: me.residenceCountryCode, weight: me.weight)
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
        ageBeganTennis: Int?? = nil,
        ageTurnedPro: Int?? = nil,
        birthCountryCode: String?? = nil,
        club: Organisation?? = nil,
        coach: Person?? = nil,
        doublePlayingHand: String?? = nil,
        height: Double?? = nil,
        placeOfResidence: String?? = nil,
        playingHand: String?? = nil,
        residenceCountryCode: String?? = nil,
        weight: Double?? = nil
    ) -> BiographicalInformation {
        return BiographicalInformation(
            ageBeganTennis: ageBeganTennis ?? self.ageBeganTennis,
            ageTurnedPro: ageTurnedPro ?? self.ageTurnedPro,
            birthCountryCode: birthCountryCode ?? self.birthCountryCode,
            club: club ?? self.club,
            coach: coach ?? self.coach,
            doublePlayingHand: doublePlayingHand ?? self.doublePlayingHand,
            height: height ?? self.height,
            placeOfResidence: placeOfResidence ?? self.placeOfResidence,
            playingHand: playingHand ?? self.playingHand,
            residenceCountryCode: residenceCountryCode ?? self.residenceCountryCode,
            weight: weight ?? self.weight
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
