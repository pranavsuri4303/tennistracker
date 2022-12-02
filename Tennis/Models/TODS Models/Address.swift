// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let address = try? newJSONDecoder().decode(Address.self, from: jsonData)

import Foundation

// MARK: - Address

class Address: Codable, Equatable {
    var addressLine1: String?
    var addressLine2: String?
    var addressLine3: String?
    var addressType: AddressType?
    var city: String?
    var countryCode: String?
    var latitude: String?
    var longitude: String?
    var postalCode: String?
    var state: String?

    internal init(addressLine1: String?, addressLine2: String?, addressLine3: String?, addressType: AddressType?, city: String?, countryCode: String?, latitude: String?, longitude: String?, postalCode: String?, state: String?) {
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.addressLine3 = addressLine3
        self.addressType = addressType
        self.city = city
        self.countryCode = countryCode
        self.latitude = latitude
        self.longitude = longitude
        self.postalCode = postalCode
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case addressLine1
        case addressLine2
        case addressLine3
        case addressType
        case city
        case countryCode
        case latitude
        case longitude
        case postalCode
        case state
    }

    static func == (lhs: Address, rhs: Address) -> Bool {
        lhs.addressLine1 == rhs.addressLine1 &&
            lhs.addressLine2 == rhs.addressLine2 &&
            lhs.addressLine3 == rhs.addressLine3 &&
            lhs.addressType == rhs.addressType &&
            lhs.city == rhs.city &&
            lhs.countryCode == rhs.countryCode &&
            lhs.latitude == rhs.latitude &&
            lhs.longitude == rhs.longitude &&
            lhs.postalCode == rhs.postalCode &&
            lhs.state == rhs.state
    }
}
