// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let contact = try Contact(json)

import Foundation

// MARK: - Contact
class Contact: Codable {
    var contactType, emailAddress, fax: String?
    var isPrivate: Bool?
    var mobileTelephone, name, telephone, website: String?

    init(contactType: String?, emailAddress: String?, fax: String?, isPrivate: Bool?, mobileTelephone: String?, name: String?, telephone: String?, website: String?) {
        self.contactType = contactType
        self.emailAddress = emailAddress
        self.fax = fax
        self.isPrivate = isPrivate
        self.mobileTelephone = mobileTelephone
        self.name = name
        self.telephone = telephone
        self.website = website
    }
}

// MARK: Contact convenience initializers and mutators

extension Contact {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Contact.self, from: data)
        self.init(contactType: me.contactType, emailAddress: me.emailAddress, fax: me.fax, isPrivate: me.isPrivate, mobileTelephone: me.mobileTelephone, name: me.name, telephone: me.telephone, website: me.website)
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
        contactType: String?? = nil,
        emailAddress: String?? = nil,
        fax: String?? = nil,
        isPrivate: Bool?? = nil,
        mobileTelephone: String?? = nil,
        name: String?? = nil,
        telephone: String?? = nil,
        website: String?? = nil
    ) -> Contact {
        return Contact(
            contactType: contactType ?? self.contactType,
            emailAddress: emailAddress ?? self.emailAddress,
            fax: fax ?? self.fax,
            isPrivate: isPrivate ?? self.isPrivate,
            mobileTelephone: mobileTelephone ?? self.mobileTelephone,
            name: name ?? self.name,
            telephone: telephone ?? self.telephone,
            website: website ?? self.website
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
