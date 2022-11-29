// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let onlineProfile = try OnlineProfile(json)

import Foundation

// MARK: - OnlineProfile
class OnlineProfile: Codable {
    var identifier, type: String?

    init(identifier: String?, type: String?) {
        self.identifier = identifier
        self.type = type
    }
}

// MARK: OnlineProfile convenience initializers and mutators

extension OnlineProfile {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(OnlineProfile.self, from: data)
        self.init(identifier: me.identifier, type: me.type)
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
        identifier: String?? = nil,
        type: String?? = nil
    ) -> OnlineProfile {
        return OnlineProfile(
            identifier: identifier ?? self.identifier,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
