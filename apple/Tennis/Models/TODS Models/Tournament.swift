// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tournament = try? newJSONDecoder().decode(Tournament.self, from: jsonData)

import Foundation

// MARK: - Tournament

struct Tournament: Codable, Equatable {
    var endDate: Date?
    var entriesClose: Date?
    var entriesOpen: Date?
    var events: [Event?]?
    var extensions: [Extension?]?
    var formalName: String?
    var hostCountryCode: String?
    var ids: IDS?
    var indoorOutdoor: IndoorOutdoor?
    var localTimeZone: String?
    var matchUPS: [MatchUp?]?
    var notes: String?
    var participants: [Participant?]?
    var promotionalName: String?
    var providerTournamentID: String?
    var scheduleItem: ScheduleItem?
    var season: String?
    var startDate: Date?
    var surfaceCategory: SurfaceCategory?
    var tennisOfficials: TennisOfficials?
    var totalPrizeMoney: TotalPrizeMoney?
    var tournamentAddresses: [Address?]?
    var tournamentContacts: [Contact?]?
    var tournamentGroups: [TournamentGroup?]?
    var tournamentLevel: TournamentLevel?
    var tournamentName: String?
    var unifiedTournamentID: String?
    var updated: Date?
    var venue: Venue?
    var withdrawalDeadline: Date?

    internal init(endDate: Date?, entriesClose: Date?, entriesOpen: Date?, events: [Event?]?, extensions: [Extension?]?, formalName: String?, hostCountryCode: String?, ids: IDS?, indoorOutdoor: IndoorOutdoor?, localTimeZone: String?, matchUPS: [MatchUp?]?, notes: String?, participants: [Participant?]?, promotionalName: String?, providerTournamentID: String?, scheduleItem: ScheduleItem?, season: String?, startDate: Date?, surfaceCategory: SurfaceCategory?, tennisOfficials: TennisOfficials?, totalPrizeMoney: TotalPrizeMoney?, tournamentAddresses: [Address?]?, tournamentContacts: [Contact?]?, tournamentGroups: [TournamentGroup?]?, tournamentLevel: TournamentLevel?, tournamentName: String?, unifiedTournamentID: String?, updated: Date?, venue: Venue?, withdrawalDeadline: Date?) {
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

    enum CodingKeys: String, CodingKey {
        case endDate
        case entriesClose
        case entriesOpen
        case events
        case extensions
        case formalName
        case hostCountryCode
        case ids
        case indoorOutdoor
        case localTimeZone
        case matchUPS = "matchUps"
        case notes
        case participants
        case promotionalName
        case providerTournamentID
        case scheduleItem
        case season
        case startDate
        case surfaceCategory
        case tennisOfficials
        case totalPrizeMoney
        case tournamentAddresses
        case tournamentContacts
        case tournamentGroups
        case tournamentLevel
        case tournamentName
        case unifiedTournamentID
        case updated
        case venue
        case withdrawalDeadline
    }

    static func == (lhs: Tournament, rhs: Tournament) -> Bool {
        return lhs.endDate == rhs.endDate &&
            lhs.entriesClose == rhs.entriesClose &&
            lhs.entriesOpen == rhs.entriesOpen &&
            lhs.events == rhs.events &&
            lhs.extensions == rhs.extensions &&
            lhs.formalName == rhs.formalName &&
            lhs.hostCountryCode == rhs.hostCountryCode &&
            lhs.ids == rhs.ids &&
            lhs.indoorOutdoor == rhs.indoorOutdoor &&
            lhs.localTimeZone == rhs.localTimeZone &&
            lhs.matchUPS == rhs.matchUPS &&
            lhs.notes == rhs.notes &&
            lhs.participants == rhs.participants &&
            lhs.promotionalName == rhs.promotionalName &&
            lhs.providerTournamentID == rhs.providerTournamentID &&
            lhs.scheduleItem == rhs.scheduleItem &&
            lhs.season == rhs.season &&
            lhs.startDate == rhs.startDate &&
            lhs.surfaceCategory == rhs.surfaceCategory &&
            lhs.tennisOfficials == rhs.tennisOfficials &&
            lhs.totalPrizeMoney == rhs.totalPrizeMoney &&
            lhs.tournamentAddresses == rhs.tournamentAddresses &&
            lhs.tournamentContacts == rhs.tournamentContacts &&
            lhs.tournamentGroups == rhs.tournamentGroups &&
            lhs.tournamentLevel == rhs.tournamentLevel &&
            lhs.tournamentName == rhs.tournamentName &&
            lhs.unifiedTournamentID == rhs.unifiedTournamentID &&
            lhs.updated == rhs.updated &&
            lhs.venue == rhs.venue &&
            lhs.withdrawalDeadline == rhs.withdrawalDeadline
    }
}
