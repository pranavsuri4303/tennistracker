// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let matchUp = try? newJSONDecoder().decode(MatchUp.self, from: jsonData)

import Foundation

// MARK: - MatchUp
class MatchUp: Codable, Equatable {
    var court: Court?
    var drawID: String?
    var endDate: Date?
    var extensions: [Extension?]?
    var humidity: Double?
    var ids: IDS?
    var indoorOutdoor: String?
    var loserGoesTo: GoesTo?
    var matchUpDuration: String?
    var matchUpFormat: String?
    var matchUpID: String?
    var matchUpStatus: String?
    var matchUpType: String?
    var notes: String?
    var orderOfPlayItem: OrderOfPlayItem?
    var roundNumber: Int?
    var roundPosition: Int?
    var scheduleItems: [ScheduleItem?]?
    var score: String?
    var sets: [Set?]?
    var sides: [Side?]?
    var startDate: Date?
    var surfaceCategory: String?
    var temperature: Double?
    var updated: Date?
    var winnerGoesTo: GoesTo?
    var winningSide: Int?
    
    internal init(court: Court? = nil, drawID: String? = nil, endDate: Date? = nil, extensions: [Extension?]? = nil, humidity: Double? = nil, ids: IDS? = nil, indoorOutdoor: String? = nil, loserGoesTo: GoesTo? = nil, matchUpDuration: String? = nil, matchUpFormat: String? = nil, matchUpID: String? = nil, matchUpStatus: String? = nil, matchUpType: String? = nil, notes: String? = nil, orderOfPlayItem: OrderOfPlayItem? = nil, roundNumber: Int? = nil, roundPosition: Int? = nil, scheduleItems: [ScheduleItem?]? = nil, score: String? = nil, sets: [Set?]? = nil, sides: [Side?]? = nil, startDate: Date? = nil, surfaceCategory: String? = nil, temperature: Double? = nil, updated: Date? = nil, winnerGoesTo: GoesTo? = nil, winningSide: Int? = nil) {
        self.court = court
        self.drawID = drawID
        self.endDate = endDate
        self.extensions = extensions
        self.humidity = humidity
        self.ids = ids
        self.indoorOutdoor = indoorOutdoor
        self.loserGoesTo = loserGoesTo
        self.matchUpDuration = matchUpDuration
        self.matchUpFormat = matchUpFormat
        self.matchUpID = matchUpID
        self.matchUpStatus = matchUpStatus
        self.matchUpType = matchUpType
        self.notes = notes
        self.orderOfPlayItem = orderOfPlayItem
        self.roundNumber = roundNumber
        self.roundPosition = roundPosition
        self.scheduleItems = scheduleItems
        self.score = score
        self.sets = sets
        self.sides = sides
        self.startDate = startDate
        self.surfaceCategory = surfaceCategory
        self.temperature = temperature
        self.updated = updated
        self.winnerGoesTo = winnerGoesTo
        self.winningSide = winningSide
    }
    
    enum CodingKeys: String, CodingKey {
        case court = "court"
        case drawID = "drawId"
        case endDate = "endDate"
        case extensions = "extensions"
        case humidity = "humidity"
        case ids = "ids"
        case indoorOutdoor = "indoorOutdoor"
        case loserGoesTo = "loserGoesTo"
        case matchUpDuration = "matchUpDuration"
        case matchUpFormat = "matchUpFormat"
        case matchUpID = "matchUpId"
        case matchUpStatus = "matchUpStatus"
        case matchUpType = "matchUpType"
        case notes = "notes"
        case orderOfPlayItem = "orderOfPlayItem"
        case roundNumber = "roundNumber"
        case roundPosition = "roundPosition"
        case scheduleItems = "scheduleItems"
        case score = "score"
        case sets = "sets"
        case sides = "sides"
        case startDate = "startDate"
        case surfaceCategory = "surfaceCategory"
        case temperature = "temperature"
        case updated = "updated"
        case winnerGoesTo = "winnerGoesTo"
        case winningSide = "winningSide"
    }
    
    static func == (lhs: MatchUp, rhs: MatchUp) -> Bool {
        return lhs.court == rhs.court &&
        lhs.drawID == rhs.drawID &&
        lhs.endDate == rhs.endDate &&
        lhs.extensions == rhs.extensions &&
        lhs.humidity == rhs.humidity &&
        lhs.ids == rhs.ids &&
        lhs.indoorOutdoor == rhs.indoorOutdoor &&
        lhs.loserGoesTo == rhs.loserGoesTo &&
        lhs.matchUpDuration == rhs.matchUpDuration &&
        lhs.matchUpFormat == rhs.matchUpFormat &&
        lhs.matchUpID == rhs.matchUpID &&
        lhs.matchUpStatus == rhs.matchUpStatus &&
        lhs.matchUpType == rhs.matchUpType &&
        lhs.notes == rhs.notes &&
        lhs.orderOfPlayItem == rhs.orderOfPlayItem &&
        lhs.roundNumber == rhs.roundNumber &&
        lhs.roundPosition == rhs.roundPosition &&
        lhs.scheduleItems == rhs.scheduleItems &&
        lhs.score == rhs.score &&
        lhs.sets == rhs.sets &&
        lhs.sides == rhs.sides &&
        lhs.startDate == rhs.startDate &&
        lhs.surfaceCategory == rhs.surfaceCategory &&
        lhs.temperature == rhs.temperature &&
        lhs.updated == rhs.updated &&
        lhs.winnerGoesTo == rhs.winnerGoesTo &&
        lhs.winningSide == rhs.winningSide
    }
    
}
