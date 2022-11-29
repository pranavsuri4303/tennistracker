// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iDS = try IDS(json)

import Foundation

// MARK: - IDS
class IDS: Codable {
    var id: [String?]?

    init(id: [String?]?) {
        self.id = id
    }
}

// MARK: IDS convenience initializers and mutators

extension IDS {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(IDS.self, from: data)
        self.init(id: me.id)
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
        id: [String?]?? = nil
    ) -> IDS {
        return IDS(
            id: id ?? self.id
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
