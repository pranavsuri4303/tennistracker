// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let prizeMoney = try PrizeMoney(json)

import Foundation

// MARK: - PrizeMoney
class PrizeMoney: Codable {
    var amount: Double?
    var currencyCode: String?

    init(amount: Double?, currencyCode: String?) {
        self.amount = amount
        self.currencyCode = currencyCode
    }
}

// MARK: PrizeMoney convenience initializers and mutators

extension PrizeMoney {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(PrizeMoney.self, from: data)
        self.init(amount: me.amount, currencyCode: me.currencyCode)
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
        amount: Double?? = nil,
        currencyCode: String?? = nil
    ) -> PrizeMoney {
        return PrizeMoney(
            amount: amount ?? self.amount,
            currencyCode: currencyCode ?? self.currencyCode
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
