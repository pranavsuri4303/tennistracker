// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coordinate = try? newJSONDecoder().decode(Coordinate.self, from: jsonData)

import Foundation

// MARK: - Coordinate

struct TODSModel: Codable, Equatable {
    var codesVersion: String?
    var courts: [Court?]?
    var dataStandardsVersion: String?
    var date: Date?
    var extensions: [Extension?]?
    var orderOfPlays: [OrderOfPlay?]?
    var organisations: [Organisation?]?
    var persons: [Person?]?
    var providerOrganisationID: String?
    var rankings: [Ranking?]?
    var statistics: [Statistic?]?
    var teams: [Team?]?
    var tournaments: [Tournament?]?
    var venues: [Venue?]?
    var worldTennisNumbers: [WorldTennisNumber?]?

    internal init(codesVersion: String? = nil, courts: [Court?]? = nil, dataStandardsVersion: String? = nil, date: Date? = nil, extensions: [Extension?]? = nil, orderOfPlays: [OrderOfPlay?]? = nil, organisations: [Organisation?]? = nil, persons: [Person?]? = nil, providerOrganisationID: String? = nil, rankings: [Ranking?]? = nil, statistics: [Statistic?]? = nil, teams: [Team?]? = nil, tournaments: [Tournament?]? = nil, venues: [Venue?]? = nil, worldTennisNumbers: [WorldTennisNumber?]? = nil) {
        self.codesVersion = codesVersion
        self.courts = courts
        self.dataStandardsVersion = dataStandardsVersion
        self.date = date
        self.extensions = extensions
        self.orderOfPlays = orderOfPlays
        self.organisations = organisations
        self.persons = persons
        self.providerOrganisationID = providerOrganisationID
        self.rankings = rankings
        self.statistics = statistics
        self.teams = teams
        self.tournaments = tournaments
        self.venues = venues
        self.worldTennisNumbers = worldTennisNumbers
    }

    enum CodingKeys: String, CodingKey {
        case codesVersion
        case courts
        case dataStandardsVersion
        case date
        case extensions
        case orderOfPlays
        case organisations
        case persons
        case providerOrganisationID
        case rankings
        case statistics
        case teams
        case tournaments
        case venues
        case worldTennisNumbers
    }

    static func == (lhs: TODSModel, rhs: TODSModel) -> Bool {
        lhs.codesVersion == rhs.codesVersion &&
            lhs.courts == rhs.courts &&
            lhs.dataStandardsVersion == rhs.dataStandardsVersion &&
            lhs.date == rhs.date &&
            lhs.extensions == rhs.extensions &&
            lhs.orderOfPlays == rhs.orderOfPlays &&
            lhs.organisations == rhs.organisations &&
            lhs.persons == rhs.persons &&
            lhs.providerOrganisationID == rhs.providerOrganisationID &&
            lhs.rankings == rhs.rankings &&
            lhs.statistics == rhs.statistics &&
            lhs.teams == rhs.teams &&
            lhs.tournaments == rhs.tournaments &&
            lhs.venues == rhs.venues &&
            lhs.worldTennisNumbers == rhs.worldTennisNumbers
    }
}
