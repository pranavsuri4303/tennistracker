// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let matchUp = try? newJSONDecoder().decode(MatchUp.self, from: jsonData)

import Foundation

// MARK: - MatchUp

struct MatchUp: Codable, Equatable {
    var court: Court?
    var drawID: String?
    var endDate: Date?
    var extensions: [Extension?]?
    var humidity: Double?
    var ids: IDS?
    var indoorOutdoor: IndoorOutdoor?
    var loserGoesTo: GoesTo?
    var matchUpDuration: String?
    var matchUpFormat: String? // TODO: add parser for matchUpForma
    var matchUpID: String?
    var matchUpStatus: MatchUpStatus?
    var matchUpType: MatchUpType?
    var notes: String?
    var orderOfPlayItem: OrderOfPlayItem?
    var roundNumber: Int?
    var roundPosition: Int?
    var scheduleItems: [ScheduleItem?]?
    var score: String?
    var sets: [Sett?]?
    var sides: [Side?]?
    var startDate: Date?
    var surfaceCategory: SurfaceCategory?
    var temperature: Double?
    var updated: Date?
    var winnerGoesTo: GoesTo?
    var winningSide: Int?

    internal init(court: Court? = nil, drawID: String? = nil, endDate: Date? = nil, extensions: [Extension?]? = nil, humidity: Double? = nil, ids: IDS? = nil, indoorOutdoor: IndoorOutdoor? = nil, loserGoesTo: GoesTo? = nil, matchUpDuration: String? = nil, matchUpFormat: String? = nil, matchUpID: String? = nil, matchUpStatus: MatchUpStatus? = nil, matchUpType: MatchUpType? = nil, notes: String? = nil, orderOfPlayItem: OrderOfPlayItem? = nil, roundNumber: Int? = nil, roundPosition: Int? = nil, scheduleItems: [ScheduleItem?]? = nil, score: String? = nil, sets: [Sett?]? = nil, sides: [Side?]? = nil, startDate: Date? = nil, surfaceCategory: SurfaceCategory? = nil, temperature: Double? = nil, updated: Date? = nil, winnerGoesTo: GoesTo? = nil, winningSide: Int? = nil) {
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
        case court
        case drawID = "drawId"
        case endDate
        case extensions
        case humidity
        case ids
        case indoorOutdoor
        case loserGoesTo
        case matchUpDuration
        case matchUpFormat
        case matchUpID = "matchUpId"
        case matchUpStatus
        case matchUpType
        case notes
        case orderOfPlayItem
        case roundNumber
        case roundPosition
        case scheduleItems
        case score
        case sets
        case sides
        case startDate
        case surfaceCategory
        case temperature
        case updated
        case winnerGoesTo
        case winningSide
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
