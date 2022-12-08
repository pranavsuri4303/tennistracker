// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let biographicalInformation = try? newJSONDecoder().decode(BiographicalInformation.self, from: jsonData)

import Foundation

// MARK: - BiographicalInformation

class BiographicalInformation: Codable, Equatable {
    var ageBeganTennis: Int?
    var ageTurnedPro: Int?
    var birthCountryCode: String?
    var club: Organisation?
    var coach: Person?
    var doublePlayingHand: PlayingDoubleHandCode?
    var height: Double?
    var placeOfResidence: String?
    var playingHand: PlayingHandCode?
    var residenceCountryCode: String?
    var weight: Double?

    internal init(ageBeganTennis: Int? = nil, ageTurnedPro: Int? = nil, birthCountryCode: String? = nil, club: Organisation? = nil, coach: Person? = nil, doublePlayingHand: PlayingDoubleHandCode? = nil, height: Double? = nil, placeOfResidence: String? = nil, playingHand: PlayingHandCode? = nil, residenceCountryCode: String? = nil, weight: Double? = nil) {
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

    enum CodingKeys: String, CodingKey {
        case ageBeganTennis
        case ageTurnedPro
        case birthCountryCode
        case club
        case coach
        case doublePlayingHand
        case height
        case placeOfResidence
        case playingHand
        case residenceCountryCode
        case weight
    }

    static func == (lhs: BiographicalInformation, rhs: BiographicalInformation) -> Bool {
        lhs.ageBeganTennis == rhs.ageBeganTennis &&
            lhs.ageTurnedPro == rhs.ageTurnedPro &&
            lhs.birthCountryCode == rhs.birthCountryCode &&
            lhs.club == rhs.club &&
            lhs.coach == rhs.coach &&
            lhs.doublePlayingHand == rhs.doublePlayingHand &&
            lhs.height == rhs.height &&
            lhs.placeOfResidence == rhs.placeOfResidence &&
            lhs.playingHand == rhs.playingHand &&
            lhs.residenceCountryCode == rhs.residenceCountryCode &&
            lhs.weight == rhs.weight
    }
}
