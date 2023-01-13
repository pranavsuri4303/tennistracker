// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let contact = try? newJSONDecoder().decode(Contact.self, from: jsonData)

import Foundation

// MARK: - Contact

struct Contact: Codable, Equatable {
    var contactType: ContactType?
    var emailAddress: String?
    var fax: String?
    var isPrivate: Bool?
    var mobileTelephone: String?
    var name: String?
    var telephone: String?
    var website: String?

    internal init(contactType: ContactType? = nil, emailAddress: String? = nil, fax: String? = nil, isPrivate: Bool? = nil, mobileTelephone: String? = nil, name: String? = nil, telephone: String? = nil, website: String? = nil) {
        self.contactType = contactType
        self.emailAddress = emailAddress
        self.fax = fax
        self.isPrivate = isPrivate
        self.mobileTelephone = mobileTelephone
        self.name = name
        self.telephone = telephone
        self.website = website
    }

    enum CodingKeys: String, CodingKey {
        case contactType
        case emailAddress
        case fax
        case isPrivate
        case mobileTelephone
        case name
        case telephone
        case website
    }

    static func == (lhs: Contact, rhs: Contact) -> Bool {
        lhs.contactType == rhs.contactType &&
            lhs.emailAddress == rhs.emailAddress &&
            lhs.fax == rhs.fax &&
            lhs.isPrivate == rhs.isPrivate &&
            lhs.mobileTelephone == rhs.mobileTelephone &&
            lhs.name == rhs.name &&
            lhs.telephone == rhs.telephone &&
            lhs.website == rhs.website
    }
}
