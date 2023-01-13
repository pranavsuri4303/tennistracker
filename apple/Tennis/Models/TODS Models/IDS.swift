// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iDS = try? newJSONDecoder().decode(IDS.self, from: jsonData)

import Foundation

// MARK: - IDS

struct IDS: Codable, Equatable {
    var id: [String?]?

    internal init(id: [String?]? = nil) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    static func == (lhs: IDS, rhs: IDS) -> Bool {
        lhs.id == rhs.id
    }
}
