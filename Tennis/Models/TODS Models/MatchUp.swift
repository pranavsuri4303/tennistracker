// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let matchUp = try MatchUp(json)

import Foundation

// MARK: - MatchUp
class MatchUp: Codable {
    var court: Court?
    var drawID: String?
    var endDate: Date?
    var extensions: [Extension?]?
    var humidity: Double?
    var ids: IDS?
    var indoorOutdoor: String?
    var loserGoesTo: GoesTo?
    var matchUpDuration, matchUpFormat: String?
    var matchUpID: String?
    var matchUpStatus, matchUpType, notes: String?
    var orderOfPlayItem: OrderOfPlayItem?
    var roundNumber, roundPosition: Int?
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

    enum CodingKeys: String, CodingKey {
        case court
        case drawID = "drawId"
        case endDate, extensions, humidity, ids, indoorOutdoor, loserGoesTo, matchUpDuration, matchUpFormat
        case matchUpID = "matchUpId"
        case matchUpStatus, matchUpType, notes, orderOfPlayItem, roundNumber, roundPosition, scheduleItems, score, sets, sides, startDate, surfaceCategory, temperature, updated, winnerGoesTo, winningSide
    }

    init(court: Court?, drawID: String?, endDate: Date?, extensions: [Extension?]?, humidity: Double?, ids: IDS?, indoorOutdoor: String?, loserGoesTo: GoesTo?, matchUpDuration: String?, matchUpFormat: String?, matchUpID: String?, matchUpStatus: String?, matchUpType: String?, notes: String?, orderOfPlayItem: OrderOfPlayItem?, roundNumber: Int?, roundPosition: Int?, scheduleItems: [ScheduleItem?]?, score: String?, sets: [Set?]?, sides: [Side?]?, startDate: Date?, surfaceCategory: String?, temperature: Double?, updated: Date?, winnerGoesTo: GoesTo?, winningSide: Int?) {
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
}

// MARK: MatchUp convenience initializers and mutators

extension MatchUp {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(MatchUp.self, from: data)
        self.init(court: me.court, drawID: me.drawID, endDate: me.endDate, extensions: me.extensions, humidity: me.humidity, ids: me.ids, indoorOutdoor: me.indoorOutdoor, loserGoesTo: me.loserGoesTo, matchUpDuration: me.matchUpDuration, matchUpFormat: me.matchUpFormat, matchUpID: me.matchUpID, matchUpStatus: me.matchUpStatus, matchUpType: me.matchUpType, notes: me.notes, orderOfPlayItem: me.orderOfPlayItem, roundNumber: me.roundNumber, roundPosition: me.roundPosition, scheduleItems: me.scheduleItems, score: me.score, sets: me.sets, sides: me.sides, startDate: me.startDate, surfaceCategory: me.surfaceCategory, temperature: me.temperature, updated: me.updated, winnerGoesTo: me.winnerGoesTo, winningSide: me.winningSide)
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
        court: Court?? = nil,
        drawID: String?? = nil,
        endDate: Date?? = nil,
        extensions: [Extension?]?? = nil,
        humidity: Double?? = nil,
        ids: IDS?? = nil,
        indoorOutdoor: String?? = nil,
        loserGoesTo: GoesTo?? = nil,
        matchUpDuration: String?? = nil,
        matchUpFormat: String?? = nil,
        matchUpID: String?? = nil,
        matchUpStatus: String?? = nil,
        matchUpType: String?? = nil,
        notes: String?? = nil,
        orderOfPlayItem: OrderOfPlayItem?? = nil,
        roundNumber: Int?? = nil,
        roundPosition: Int?? = nil,
        scheduleItems: [ScheduleItem?]?? = nil,
        score: String?? = nil,
        sets: [Set?]?? = nil,
        sides: [Side?]?? = nil,
        startDate: Date?? = nil,
        surfaceCategory: String?? = nil,
        temperature: Double?? = nil,
        updated: Date?? = nil,
        winnerGoesTo: GoesTo?? = nil,
        winningSide: Int?? = nil
    ) -> MatchUp {
        return MatchUp(
            court: court ?? self.court,
            drawID: drawID ?? self.drawID,
            endDate: endDate ?? self.endDate,
            extensions: extensions ?? self.extensions,
            humidity: humidity ?? self.humidity,
            ids: ids ?? self.ids,
            indoorOutdoor: indoorOutdoor ?? self.indoorOutdoor,
            loserGoesTo: loserGoesTo ?? self.loserGoesTo,
            matchUpDuration: matchUpDuration ?? self.matchUpDuration,
            matchUpFormat: matchUpFormat ?? self.matchUpFormat,
            matchUpID: matchUpID ?? self.matchUpID,
            matchUpStatus: matchUpStatus ?? self.matchUpStatus,
            matchUpType: matchUpType ?? self.matchUpType,
            notes: notes ?? self.notes,
            orderOfPlayItem: orderOfPlayItem ?? self.orderOfPlayItem,
            roundNumber: roundNumber ?? self.roundNumber,
            roundPosition: roundPosition ?? self.roundPosition,
            scheduleItems: scheduleItems ?? self.scheduleItems,
            score: score ?? self.score,
            sets: sets ?? self.sets,
            sides: sides ?? self.sides,
            startDate: startDate ?? self.startDate,
            surfaceCategory: surfaceCategory ?? self.surfaceCategory,
            temperature: temperature ?? self.temperature,
            updated: updated ?? self.updated,
            winnerGoesTo: winnerGoesTo ?? self.winnerGoesTo,
            winningSide: winningSide ?? self.winningSide
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
