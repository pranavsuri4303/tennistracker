// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tournament = try Tournament(json)

import Foundation

// MARK: - Tournament
class Tournament: Codable {
    var endDate, entriesClose, entriesOpen: Date?
    var events: [Event?]?
    var extensions: [Extension?]?
    var formalName, hostCountryCode: String?
    var ids: IDS?
    var indoorOutdoor, localTimeZone: String?
    var matchUPS: [MatchUp?]?
    var notes: String?
    var participants: [Participant?]?
    var promotionalName: String?
    var providerTournamentID: String?
    var scheduleItem: ScheduleItem?
    var season: String?
    var startDate: Date?
    var surfaceCategory: String?
    var tennisOfficials: TennisOfficials?
    var totalPrizeMoney: TotalPrizeMoney?
    var tournamentAddresses: [Address?]?
    var tournamentContacts: [Contact?]?
    var tournamentGroups: [TournamentGroup?]?
    var tournamentLevel, tournamentName: String?
    var unifiedTournamentID: String?
    var updated: Date?
    var venue: Venue?
    var withdrawalDeadline: Date?

    enum CodingKeys: String, CodingKey {
        case endDate, entriesClose, entriesOpen, events, extensions, formalName, hostCountryCode, ids, indoorOutdoor, localTimeZone
        case matchUPS = "matchUps"
        case notes, participants, promotionalName, providerTournamentID, scheduleItem, season, startDate, surfaceCategory, tennisOfficials, totalPrizeMoney, tournamentAddresses, tournamentContacts, tournamentGroups, tournamentLevel, tournamentName, unifiedTournamentID, updated, venue, withdrawalDeadline
    }

    init(endDate: Date?, entriesClose: Date?, entriesOpen: Date?, events: [Event?]?, extensions: [Extension?]?, formalName: String?, hostCountryCode: String?, ids: IDS?, indoorOutdoor: String?, localTimeZone: String?, matchUPS: [MatchUp?]?, notes: String?, participants: [Participant?]?, promotionalName: String?, providerTournamentID: String?, scheduleItem: ScheduleItem?, season: String?, startDate: Date?, surfaceCategory: String?, tennisOfficials: TennisOfficials?, totalPrizeMoney: TotalPrizeMoney?, tournamentAddresses: [Address?]?, tournamentContacts: [Contact?]?, tournamentGroups: [TournamentGroup?]?, tournamentLevel: String?, tournamentName: String?, unifiedTournamentID: String?, updated: Date?, venue: Venue?, withdrawalDeadline: Date?) {
        self.endDate = endDate
        self.entriesClose = entriesClose
        self.entriesOpen = entriesOpen
        self.events = events
        self.extensions = extensions
        self.formalName = formalName
        self.hostCountryCode = hostCountryCode
        self.ids = ids
        self.indoorOutdoor = indoorOutdoor
        self.localTimeZone = localTimeZone
        self.matchUPS = matchUPS
        self.notes = notes
        self.participants = participants
        self.promotionalName = promotionalName
        self.providerTournamentID = providerTournamentID
        self.scheduleItem = scheduleItem
        self.season = season
        self.startDate = startDate
        self.surfaceCategory = surfaceCategory
        self.tennisOfficials = tennisOfficials
        self.totalPrizeMoney = totalPrizeMoney
        self.tournamentAddresses = tournamentAddresses
        self.tournamentContacts = tournamentContacts
        self.tournamentGroups = tournamentGroups
        self.tournamentLevel = tournamentLevel
        self.tournamentName = tournamentName
        self.unifiedTournamentID = unifiedTournamentID
        self.updated = updated
        self.venue = venue
        self.withdrawalDeadline = withdrawalDeadline
    }
}

// MARK: Tournament convenience initializers and mutators

extension Tournament {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Tournament.self, from: data)
        self.init(endDate: me.endDate, entriesClose: me.entriesClose, entriesOpen: me.entriesOpen, events: me.events, extensions: me.extensions, formalName: me.formalName, hostCountryCode: me.hostCountryCode, ids: me.ids, indoorOutdoor: me.indoorOutdoor, localTimeZone: me.localTimeZone, matchUPS: me.matchUPS, notes: me.notes, participants: me.participants, promotionalName: me.promotionalName, providerTournamentID: me.providerTournamentID, scheduleItem: me.scheduleItem, season: me.season, startDate: me.startDate, surfaceCategory: me.surfaceCategory, tennisOfficials: me.tennisOfficials, totalPrizeMoney: me.totalPrizeMoney, tournamentAddresses: me.tournamentAddresses, tournamentContacts: me.tournamentContacts, tournamentGroups: me.tournamentGroups, tournamentLevel: me.tournamentLevel, tournamentName: me.tournamentName, unifiedTournamentID: me.unifiedTournamentID, updated: me.updated, venue: me.venue, withdrawalDeadline: me.withdrawalDeadline)
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
        endDate: Date?? = nil,
        entriesClose: Date?? = nil,
        entriesOpen: Date?? = nil,
        events: [Event?]?? = nil,
        extensions: [Extension?]?? = nil,
        formalName: String?? = nil,
        hostCountryCode: String?? = nil,
        ids: IDS?? = nil,
        indoorOutdoor: String?? = nil,
        localTimeZone: String?? = nil,
        matchUPS: [MatchUp?]?? = nil,
        notes: String?? = nil,
        participants: [Participant?]?? = nil,
        promotionalName: String?? = nil,
        providerTournamentID: String?? = nil,
        scheduleItem: ScheduleItem?? = nil,
        season: String?? = nil,
        startDate: Date?? = nil,
        surfaceCategory: String?? = nil,
        tennisOfficials: TennisOfficials?? = nil,
        totalPrizeMoney: TotalPrizeMoney?? = nil,
        tournamentAddresses: [Address?]?? = nil,
        tournamentContacts: [Contact?]?? = nil,
        tournamentGroups: [TournamentGroup?]?? = nil,
        tournamentLevel: String?? = nil,
        tournamentName: String?? = nil,
        unifiedTournamentID: String?? = nil,
        updated: Date?? = nil,
        venue: Venue?? = nil,
        withdrawalDeadline: Date?? = nil
    ) -> Tournament {
        return Tournament(
            endDate: endDate ?? self.endDate,
            entriesClose: entriesClose ?? self.entriesClose,
            entriesOpen: entriesOpen ?? self.entriesOpen,
            events: events ?? self.events,
            extensions: extensions ?? self.extensions,
            formalName: formalName ?? self.formalName,
            hostCountryCode: hostCountryCode ?? self.hostCountryCode,
            ids: ids ?? self.ids,
            indoorOutdoor: indoorOutdoor ?? self.indoorOutdoor,
            localTimeZone: localTimeZone ?? self.localTimeZone,
            matchUPS: matchUPS ?? self.matchUPS,
            notes: notes ?? self.notes,
            participants: participants ?? self.participants,
            promotionalName: promotionalName ?? self.promotionalName,
            providerTournamentID: providerTournamentID ?? self.providerTournamentID,
            scheduleItem: scheduleItem ?? self.scheduleItem,
            season: season ?? self.season,
            startDate: startDate ?? self.startDate,
            surfaceCategory: surfaceCategory ?? self.surfaceCategory,
            tennisOfficials: tennisOfficials ?? self.tennisOfficials,
            totalPrizeMoney: totalPrizeMoney ?? self.totalPrizeMoney,
            tournamentAddresses: tournamentAddresses ?? self.tournamentAddresses,
            tournamentContacts: tournamentContacts ?? self.tournamentContacts,
            tournamentGroups: tournamentGroups ?? self.tournamentGroups,
            tournamentLevel: tournamentLevel ?? self.tournamentLevel,
            tournamentName: tournamentName ?? self.tournamentName,
            unifiedTournamentID: unifiedTournamentID ?? self.unifiedTournamentID,
            updated: updated ?? self.updated,
            venue: venue ?? self.venue,
            withdrawalDeadline: withdrawalDeadline ?? self.withdrawalDeadline
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
