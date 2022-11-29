// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let goesTo = try GoesTo(json)

import Foundation

// MARK: - GoesTo
class GoesTo: Codable {
    var drawID, eventID, matchUpID: String?
    var position, roundNumber: Int?
    var stageID: String?

    enum CodingKeys: String, CodingKey {
        case drawID = "drawId"
        case eventID = "eventId"
        case matchUpID = "matchUpId"
        case position, roundNumber
        case stageID = "stageId"
    }

    init(drawID: String?, eventID: String?, matchUpID: String?, position: Int?, roundNumber: Int?, stageID: String?) {
        self.drawID = drawID
        self.eventID = eventID
        self.matchUpID = matchUpID
        self.position = position
        self.roundNumber = roundNumber
        self.stageID = stageID
    }
}

// MARK: GoesTo convenience initializers and mutators

extension GoesTo {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(GoesTo.self, from: data)
        self.init(drawID: me.drawID, eventID: me.eventID, matchUpID: me.matchUpID, position: me.position, roundNumber: me.roundNumber, stageID: me.stageID)
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
        drawID: String?? = nil,
        eventID: String?? = nil,
        matchUpID: String?? = nil,
        position: Int?? = nil,
        roundNumber: Int?? = nil,
        stageID: String?? = nil
    ) -> GoesTo {
        return GoesTo(
            drawID: drawID ?? self.drawID,
            eventID: eventID ?? self.eventID,
            matchUpID: matchUpID ?? self.matchUpID,
            position: position ?? self.position,
            roundNumber: roundNumber ?? self.roundNumber,
            stageID: stageID ?? self.stageID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
