// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let extension = try Extension(json)

import Foundation

// MARK: - Extension
class Extension: Codable {
    var extensionDescription, name, value: String?

    enum CodingKeys: String, CodingKey {
        case extensionDescription = "description"
        case name, value
    }

    init(extensionDescription: String?, name: String?, value: String?) {
        self.extensionDescription = extensionDescription
        self.name = name
        self.value = value
    }
}

// MARK: Extension convenience initializers and mutators

extension Extension {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Extension.self, from: data)
        self.init(extensionDescription: me.extensionDescription, name: me.name, value: me.value)
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
        extensionDescription: String?? = nil,
        name: String?? = nil,
        value: String?? = nil
    ) -> Extension {
        return Extension(
            extensionDescription: extensionDescription ?? self.extensionDescription,
            name: name ?? self.name,
            value: value ?? self.value
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
