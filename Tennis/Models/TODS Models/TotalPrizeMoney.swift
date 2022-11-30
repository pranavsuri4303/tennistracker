// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let totalPrizeMoney = try? newJSONDecoder().decode(TotalPrizeMoney.self, from: jsonData)

import Foundation

// MARK: - TotalPrizeMoney
class TotalPrizeMoney: Codable, Equatable {
    var prizeMoney: [PrizeMoney?]?

    internal init(prizeMoney: [PrizeMoney?]?) {
        self.prizeMoney = prizeMoney
    }
    
    enum CodingKeys: String, CodingKey {
        case prizeMoney = "prizeMoney"
    }

    static func == (lhs: TotalPrizeMoney, rhs: TotalPrizeMoney) -> Bool {
        return lhs.prizeMoney == rhs.prizeMoney
    }
}
