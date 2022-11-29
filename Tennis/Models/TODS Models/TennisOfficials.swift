// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tennisOfficials = try TennisOfficials(json)

import Foundation

// MARK: - TennisOfficials
class TennisOfficials: Codable {
    var tennisOfficial: [Participant?]?

    init(tennisOfficial: [Participant?]?) {
        self.tennisOfficial = tennisOfficial
    }
}

// MARK: TennisOfficials convenience initializers and mutators

extension TennisOfficials {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TennisOfficials.self, from: data)
        self.init(tennisOfficial: me.tennisOfficial)
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
        tennisOfficial: [Participant?]?? = nil
    ) -> TennisOfficials {
        return TennisOfficials(
            tennisOfficial: tennisOfficial ?? self.tennisOfficial
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
