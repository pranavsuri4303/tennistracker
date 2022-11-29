// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tODSModel = try TODSModel(json)

import Foundation

// MARK: - TODSModel
class TODSModel: Codable {
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

    init(codesVersion: String?, courts: [Court?]?, dataStandardsVersion: String?, date: Date?, extensions: [Extension?]?, orderOfPlays: [OrderOfPlay?]?, organisations: [Organisation?]?, persons: [Person?]?, providerOrganisationID: String?, rankings: [Ranking?]?, statistics: [Statistic?]?, teams: [Team?]?, tournaments: [Tournament?]?, venues: [Venue?]?, worldTennisNumbers: [WorldTennisNumber?]?) {
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
}

// MARK: TODSModel convenience initializers and mutators

extension TODSModel {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TODSModel.self, from: data)
        self.init(codesVersion: me.codesVersion, courts: me.courts, dataStandardsVersion: me.dataStandardsVersion, date: me.date, extensions: me.extensions, orderOfPlays: me.orderOfPlays, organisations: me.organisations, persons: me.persons, providerOrganisationID: me.providerOrganisationID, rankings: me.rankings, statistics: me.statistics, teams: me.teams, tournaments: me.tournaments, venues: me.venues, worldTennisNumbers: me.worldTennisNumbers)
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
        codesVersion: String?? = nil,
        courts: [Court?]?? = nil,
        dataStandardsVersion: String?? = nil,
        date: Date?? = nil,
        extensions: [Extension?]?? = nil,
        orderOfPlays: [OrderOfPlay?]?? = nil,
        organisations: [Organisation?]?? = nil,
        persons: [Person?]?? = nil,
        providerOrganisationID: String?? = nil,
        rankings: [Ranking?]?? = nil,
        statistics: [Statistic?]?? = nil,
        teams: [Team?]?? = nil,
        tournaments: [Tournament?]?? = nil,
        venues: [Venue?]?? = nil,
        worldTennisNumbers: [WorldTennisNumber?]?? = nil
    ) -> TODSModel {
        return TODSModel(
            codesVersion: codesVersion ?? self.codesVersion,
            courts: courts ?? self.courts,
            dataStandardsVersion: dataStandardsVersion ?? self.dataStandardsVersion,
            date: date ?? self.date,
            extensions: extensions ?? self.extensions,
            orderOfPlays: orderOfPlays ?? self.orderOfPlays,
            organisations: organisations ?? self.organisations,
            persons: persons ?? self.persons,
            providerOrganisationID: providerOrganisationID ?? self.providerOrganisationID,
            rankings: rankings ?? self.rankings,
            statistics: statistics ?? self.statistics,
            teams: teams ?? self.teams,
            tournaments: tournaments ?? self.tournaments,
            venues: venues ?? self.venues,
            worldTennisNumbers: worldTennisNumbers ?? self.worldTennisNumbers
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
