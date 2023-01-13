// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let worldTennisNumber = try? newJSONDecoder().decode(WorldTennisNumber.self, from: jsonData)

import Foundation

// MARK: - WorldTennisNumber

struct WorldTennisNumber: Codable, Equatable {
    var confidence: Double?
    var extensions: [Extension?]?
    var ids: IDS?
    var matchUPS: [MatchUp?]?
    var notes: String?
    var ratingDate: Date?
    var tennisID: String?
    var tennisNumber: Double?
    var updated: Date?
    var worldTennisNumberType: String?

    internal init(confidence: Double?, extensions: [Extension?]?, ids: IDS?, matchUPS: [MatchUp?]?, notes: String?, ratingDate: Date?, tennisID: String?, tennisNumber: Double?, updated: Date?, worldTennisNumberType: String?) {
        self.confidence = confidence
        self.extensions = extensions
        self.ids = ids
        self.matchUPS = matchUPS
        self.notes = notes
        self.ratingDate = ratingDate
        self.tennisID = tennisID
        self.tennisNumber = tennisNumber
        self.updated = updated
        self.worldTennisNumberType = worldTennisNumberType
    }

    enum CodingKeys: String, CodingKey {
        case confidence
        case extensions
        case ids
        case matchUPS = "matchUps"
        case notes
        case ratingDate
        case tennisID = "tennisId"
        case tennisNumber
        case updated
        case worldTennisNumberType
    }

    static func == (lhs: WorldTennisNumber, rhs: WorldTennisNumber) -> Bool {
        return lhs.confidence == rhs.confidence &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.matchUPS == rhs.matchUPS &&
            lhs.notes == rhs.notes &&
            lhs.ratingDate == rhs.ratingDate &&
            lhs.tennisID == rhs.tennisID &&
            lhs.tennisNumber == rhs.tennisNumber &&
            lhs.updated == rhs.updated &&
            lhs.worldTennisNumberType == rhs.worldTennisNumberType
    }
}
