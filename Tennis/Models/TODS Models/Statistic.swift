// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let statistic = try? newJSONDecoder().decode(Statistic.self, from: jsonData)

import Foundation

// MARK: - Statistic

class Statistic: Codable, Equatable {
    var code: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var name: String?
    var notes: String?
    var updated: Date?
    var value: String?

    internal init(code: String?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, updated: Date?, value: String?) {
        self.code = code
        self.extensions = extensions
        self.ids = ids
        self.name = name
        self.notes = notes
        self.updated = updated
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case code
        case extensions
        case ids
        case name
        case notes
        case updated
        case value
    }

    static func == (lhs: Statistic, rhs: Statistic) -> Bool {
        return lhs.code == rhs.code &&
            lhs.extensions == rhs.extensions &&
            lhs.ids == rhs.ids &&
            lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.updated == rhs.updated &&
            lhs.value == rhs.value
    }
}
