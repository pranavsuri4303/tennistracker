// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let worldTennisNumber = try WorldTennisNumber(json)

import Foundation

// MARK: - WorldTennisNumber
class WorldTennisNumber: Codable {
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

    enum CodingKeys: String, CodingKey {
        case confidence, extensions, ids
        case matchUPS = "matchUps"
        case notes, ratingDate
        case tennisID = "tennisId"
        case tennisNumber, updated, worldTennisNumberType
    }

    init(confidence: Double?, extensions: [Extension?]?, ids: IDS?, matchUPS: [MatchUp?]?, notes: String?, ratingDate: Date?, tennisID: String?, tennisNumber: Double?, updated: Date?, worldTennisNumberType: String?) {
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
}

// MARK: WorldTennisNumber convenience initializers and mutators

extension WorldTennisNumber {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(WorldTennisNumber.self, from: data)
        self.init(confidence: me.confidence, extensions: me.extensions, ids: me.ids, matchUPS: me.matchUPS, notes: me.notes, ratingDate: me.ratingDate, tennisID: me.tennisID, tennisNumber: me.tennisNumber, updated: me.updated, worldTennisNumberType: me.worldTennisNumberType)
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
        confidence: Double?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        matchUPS: [MatchUp?]?? = nil,
        notes: String?? = nil,
        ratingDate: Date?? = nil,
        tennisID: String?? = nil,
        tennisNumber: Double?? = nil,
        updated: Date?? = nil,
        worldTennisNumberType: String?? = nil
    ) -> WorldTennisNumber {
        return WorldTennisNumber(
            confidence: confidence ?? self.confidence,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            matchUPS: matchUPS ?? self.matchUPS,
            notes: notes ?? self.notes,
            ratingDate: ratingDate ?? self.ratingDate,
            tennisID: tennisID ?? self.tennisID,
            tennisNumber: tennisNumber ?? self.tennisNumber,
            updated: updated ?? self.updated,
            worldTennisNumberType: worldTennisNumberType ?? self.worldTennisNumberType
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
