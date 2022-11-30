// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let prizeMoney = try? newJSONDecoder().decode(PrizeMoney.self, from: jsonData)

import Foundation

// MARK: - PrizeMoney
class PrizeMoney: Codable, Equatable {
    var amount: Double?
    var currencyCode: String?

    internal init(amount: Double?, currencyCode: String?) {
        self.amount = amount
        self.currencyCode = currencyCode
    }
    
    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case currencyCode = "currencyCode"
    }

    static func == (lhs: PrizeMoney, rhs: PrizeMoney) -> Bool {
        return lhs.amount == rhs.amount &&
        lhs.currencyCode == rhs.currencyCode
    }
}
