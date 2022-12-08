// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let goesTo = try? newJSONDecoder().decode(GoesTo.self, from: jsonData)

import Foundation

// MARK: - GoesTo

class GoesTo: Codable, Equatable {
    var drawID: String?
    var eventID: String?
    var matchUpID: String?
    var position: Int?
    var roundNumber: Int?
    var stageID: String?

    internal init(drawID: String? = nil, eventID: String? = nil, matchUpID: String? = nil, position: Int? = nil, roundNumber: Int? = nil, stageID: String? = nil) {
        self.drawID = drawID
        self.eventID = eventID
        self.matchUpID = matchUpID
        self.position = position
        self.roundNumber = roundNumber
        self.stageID = stageID
    }

    enum CodingKeys: String, CodingKey {
        case drawID = "drawId"
        case eventID = "eventId"
        case matchUpID = "matchUpId"
        case position
        case roundNumber
        case stageID = "stageId"
    }

    static func == (lhs: GoesTo, rhs: GoesTo) -> Bool {
        lhs.drawID == rhs.drawID &&
            lhs.eventID == rhs.eventID &&
            lhs.matchUpID == rhs.matchUpID &&
            lhs.position == rhs.position &&
            lhs.roundNumber == rhs.roundNumber &&
            lhs.stageID == rhs.stageID
    }
}
