// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let extension = try? newJSONDecoder().decode(Extension.self, from: jsonData)

import Foundation

// MARK: - Extension

class Extension: Codable, Equatable {
    var extensionDescription: String?
    var name: String?
    var value: String?

    internal init(extensionDescription: String? = nil, name: String? = nil, value: String? = nil) {
        self.extensionDescription = extensionDescription
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case extensionDescription = "description"
        case name
        case value
    }

    static func == (lhs: Extension, rhs: Extension) -> Bool {
        return lhs.extensionDescription == rhs.extensionDescription &&
            lhs.name == rhs.name &&
            lhs.value == rhs.value
    }
}
