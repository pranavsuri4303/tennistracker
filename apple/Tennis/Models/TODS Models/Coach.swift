//
//  Coach.swift
//  Tennis
//
//  Created by Pranav Suri on 13/1/23.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let person = try? newJSONDecoder().decode(Person.self, from: jsonData)

import Foundation

// MARK: - Person

struct Coach: Codable, Equatable {
    var addresses: [Address?]?
//    var biographicalInformation: BiographicalInformation?
    var birthDate: Date?
    var emailAddress: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var nationalityCode: String?
    var nativeFamilyName: String?
    var nativeGivenName: String?
    var notes: String?
    var onlineProfiles: [OnlineProfile?]?
    var otherNames: String?
    var passportFamilyName: String?
    var passportGivenName: String?
    var personID: String?
    var previousNames: String?
    var sex: Sex?
    var standardFamilyName: String?
    var standardGivenName: String?
    var tennisID: String?
    var updated: Date?

    internal init(addresses: [Address?]? = nil, birthDate: Date? = nil, emailAddress: String? = nil, extensions: [Extension?]? = nil, ids: IDS? = nil, nationalityCode: String? = nil, nativeFamilyName: String? = nil, nativeGivenName: String? = nil, notes: String? = nil, onlineProfiles: [OnlineProfile?]? = nil, otherNames: String? = nil, passportFamilyName: String? = nil, passportGivenName: String? = nil, personID: String? = nil, previousNames: String? = nil, sex: Sex? = nil, standardFamilyName: String? = nil, standardGivenName: String? = nil, tennisID: String? = nil, updated: Date? = nil) {
        self.addresses = addresses
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

    enum CodingKeys: String, CodingKey {
        case addresses
        case birthDate
        case emailAddress
        case extensions
        case ids
        case nationalityCode
        case nativeFamilyName
        case nativeGivenName
        case notes
        case onlineProfiles
        case otherNames
        case passportFamilyName
        case passportGivenName
        case personID = "personId"
        case previousNames
        case sex
        case standardFamilyName
        case standardGivenName
        case tennisID = "tennisId"
        case updated
    }

    static func == (lhs: Coach, rhs: Coach) -> Bool {
        return lhs.addresses == rhs.addresses &&
            lhs.birthDate == rhs.birthDate &&
            lhs.emailAddress == rhs.emailAddress &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.nationalityCode == rhs.nationalityCode &&
            lhs.nativeFamilyName == rhs.nativeFamilyName &&
            lhs.nativeGivenName == rhs.nativeGivenName &&
            lhs.notes == rhs.notes &&
            lhs.onlineProfiles == rhs.onlineProfiles &&
            lhs.otherNames == rhs.otherNames &&
            lhs.passportFamilyName == rhs.passportFamilyName &&
            lhs.passportGivenName == rhs.passportGivenName &&
            lhs.personID == rhs.personID &&
            lhs.previousNames == rhs.previousNames &&
            lhs.sex == rhs.sex &&
            lhs.standardFamilyName == rhs.standardFamilyName &&
            lhs.standardGivenName == rhs.standardGivenName &&
            lhs.tennisID == rhs.tennisID &&
            lhs.updated == rhs.updated
    }
}
