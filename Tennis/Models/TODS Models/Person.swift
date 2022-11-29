// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let person = try Person(json)

import Foundation

// MARK: - Person
class Person: Codable {
    var addresses: [Address?]?
    var biographicalInformation: BiographicalInformation?
    var birthDate: Date?
    var emailAddress: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var nationalityCode, nativeFamilyName, nativeGivenName, notes: String?
    var onlineProfiles: [OnlineProfile?]?
    var otherNames, passportFamilyName, passportGivenName: String?
    var personID: String?
    var previousNames, sex, standardFamilyName, standardGivenName: String?
    var tennisID: String?
    var updated: Date?

    enum CodingKeys: String, CodingKey {
        case addresses, biographicalInformation, birthDate, emailAddress, extensions, ids, nationalityCode, nativeFamilyName, nativeGivenName, notes, onlineProfiles, otherNames, passportFamilyName, passportGivenName
        case personID = "personId"
        case previousNames, sex, standardFamilyName, standardGivenName
        case tennisID = "tennisId"
        case updated
    }

    init(addresses: [Address?]?, biographicalInformation: BiographicalInformation?, birthDate: Date?, emailAddress: String?, extensions: [Extension?]?, ids: IDS?, nationalityCode: String?, nativeFamilyName: String?, nativeGivenName: String?, notes: String?, onlineProfiles: [OnlineProfile?]?, otherNames: String?, passportFamilyName: String?, passportGivenName: String?, personID: String?, previousNames: String?, sex: String?, standardFamilyName: String?, standardGivenName: String?, tennisID: String?, updated: Date?) {
        self.addresses = addresses
        self.biographicalInformation = biographicalInformation
        self.birthDate = birthDate
        self.emailAddress = emailAddress
        self.extensions = extensions
        self.ids = ids
        self.nationalityCode = nationalityCode
        self.nativeFamilyName = nativeFamilyName
        self.nativeGivenName = nativeGivenName
        self.notes = notes
        self.onlineProfiles = onlineProfiles
        self.otherNames = otherNames
        self.passportFamilyName = passportFamilyName
        self.passportGivenName = passportGivenName
        self.personID = personID
        self.previousNames = previousNames
        self.sex = sex
        self.standardFamilyName = standardFamilyName
        self.standardGivenName = standardGivenName
        self.tennisID = tennisID
        self.updated = updated
    }
}

// MARK: Person convenience initializers and mutators

extension Person {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Person.self, from: data)
        self.init(addresses: me.addresses, biographicalInformation: me.biographicalInformation, birthDate: me.birthDate, emailAddress: me.emailAddress, extensions: me.extensions, ids: me.ids, nationalityCode: me.nationalityCode, nativeFamilyName: me.nativeFamilyName, nativeGivenName: me.nativeGivenName, notes: me.notes, onlineProfiles: me.onlineProfiles, otherNames: me.otherNames, passportFamilyName: me.passportFamilyName, passportGivenName: me.passportGivenName, personID: me.personID, previousNames: me.previousNames, sex: me.sex, standardFamilyName: me.standardFamilyName, standardGivenName: me.standardGivenName, tennisID: me.tennisID, updated: me.updated)
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
        addresses: [Address?]?? = nil,
        biographicalInformation: BiographicalInformation?? = nil,
        birthDate: Date?? = nil,
        emailAddress: String?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        nationalityCode: String?? = nil,
        nativeFamilyName: String?? = nil,
        nativeGivenName: String?? = nil,
        notes: String?? = nil,
        onlineProfiles: [OnlineProfile?]?? = nil,
        otherNames: String?? = nil,
        passportFamilyName: String?? = nil,
        passportGivenName: String?? = nil,
        personID: String?? = nil,
        previousNames: String?? = nil,
        sex: String?? = nil,
        standardFamilyName: String?? = nil,
        standardGivenName: String?? = nil,
        tennisID: String?? = nil,
        updated: Date?? = nil
    ) -> Person {
        return Person(
            addresses: addresses ?? self.addresses,
            biographicalInformation: biographicalInformation ?? self.biographicalInformation,
            birthDate: birthDate ?? self.birthDate,
            emailAddress: emailAddress ?? self.emailAddress,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            nationalityCode: nationalityCode ?? self.nationalityCode,
            nativeFamilyName: nativeFamilyName ?? self.nativeFamilyName,
            nativeGivenName: nativeGivenName ?? self.nativeGivenName,
            notes: notes ?? self.notes,
            onlineProfiles: onlineProfiles ?? self.onlineProfiles,
            otherNames: otherNames ?? self.otherNames,
            passportFamilyName: passportFamilyName ?? self.passportFamilyName,
            passportGivenName: passportGivenName ?? self.passportGivenName,
            personID: personID ?? self.personID,
            previousNames: previousNames ?? self.previousNames,
            sex: sex ?? self.sex,
            standardFamilyName: standardFamilyName ?? self.standardFamilyName,
            standardGivenName: standardGivenName ?? self.standardGivenName,
            tennisID: tennisID ?? self.tennisID,
            updated: updated ?? self.updated
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
