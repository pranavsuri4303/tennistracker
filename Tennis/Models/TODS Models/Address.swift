// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let address = try Address(json)

import Foundation

// MARK: - Address
class Address: Codable {
    var addressLine1, addressLine2, addressLine3, addressType: String?
    var city, countryCode, latitude, longitude: String?
    var postalCode, state: String?

    init(addressLine1: String?, addressLine2: String?, addressLine3: String?, addressType: String?, city: String?, countryCode: String?, latitude: String?, longitude: String?, postalCode: String?, state: String?) {
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
}

// MARK: Address convenience initializers and mutators

extension Address {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Address.self, from: data)
        self.init(addressLine1: me.addressLine1, addressLine2: me.addressLine2, addressLine3: me.addressLine3, addressType: me.addressType, city: me.city, countryCode: me.countryCode, latitude: me.latitude, longitude: me.longitude, postalCode: me.postalCode, state: me.state)
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
        addressLine1: String?? = nil,
        addressLine2: String?? = nil,
        addressLine3: String?? = nil,
        addressType: String?? = nil,
        city: String?? = nil,
        countryCode: String?? = nil,
        latitude: String?? = nil,
        longitude: String?? = nil,
        postalCode: String?? = nil,
        state: String?? = nil
    ) -> Address {
        return Address(
            addressLine1: addressLine1 ?? self.addressLine1,
            addressLine2: addressLine2 ?? self.addressLine2,
            addressLine3: addressLine3 ?? self.addressLine3,
            addressType: addressType ?? self.addressType,
            city: city ?? self.city,
            countryCode: countryCode ?? self.countryCode,
            latitude: latitude ?? self.latitude,
            longitude: longitude ?? self.longitude,
            postalCode: postalCode ?? self.postalCode,
            state: state ?? self.state
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
