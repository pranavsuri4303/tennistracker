// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let onlineProfile = try? newJSONDecoder().decode(OnlineProfile.self, from: jsonData)

import Foundation

// MARK: - OnlineProfile

struct OnlineProfile: Codable, Equatable {
    var identifier: String?
    var type: String?

    internal init(identifier: String? = nil, type: String? = nil) {
        self.identifier = identifier
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case identifier
        case type
    }

    static func == (lhs: OnlineProfile, rhs: OnlineProfile) -> Bool {
        return lhs.identifier == rhs.identifier &&
            lhs.type == rhs.type
    }
}
