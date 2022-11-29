// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let totalPrizeMoney = try TotalPrizeMoney(json)

import Foundation

// MARK: - TotalPrizeMoney
class TotalPrizeMoney: Codable {
    var prizeMoney: [PrizeMoney?]?

    init(prizeMoney: [PrizeMoney?]?) {
        self.prizeMoney = prizeMoney
    }
}

// MARK: TotalPrizeMoney convenience initializers and mutators

extension TotalPrizeMoney {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TotalPrizeMoney.self, from: data)
        self.init(prizeMoney: me.prizeMoney)
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
        prizeMoney: [PrizeMoney?]?? = nil
    ) -> TotalPrizeMoney {
        return TotalPrizeMoney(
            prizeMoney: prizeMoney ?? self.prizeMoney
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
