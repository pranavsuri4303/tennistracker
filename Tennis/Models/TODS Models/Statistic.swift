// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let statistic = try Statistic(json)

import Foundation

// MARK: - Statistic
class Statistic: Codable {
    var code: String?
    var extensions: [Extension?]?
    var ids: IDS?
    var name, notes: String?
    var updated: Date?
    var value: String?

    init(code: String?, extensions: [Extension?]?, ids: IDS?, name: String?, notes: String?, updated: Date?, value: String?) {
        self.code = code
        self.extensions = extensions
        self.ids = ids
        self.name = name
        self.notes = notes
        self.updated = updated
        self.value = value
    }
}

// MARK: Statistic convenience initializers and mutators

extension Statistic {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Statistic.self, from: data)
        self.init(code: me.code, extensions: me.extensions, ids: me.ids, name: me.name, notes: me.notes, updated: me.updated, value: me.value)
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
        code: String?? = nil,
        extensions: [Extension?]?? = nil,
        ids: IDS?? = nil,
        name: String?? = nil,
        notes: String?? = nil,
        updated: Date?? = nil,
        value: String?? = nil
    ) -> Statistic {
        return Statistic(
            code: code ?? self.code,
            extensions: extensions ?? self.extensions,
            ids: ids ?? self.ids,
            name: name ?? self.name,
            notes: notes ?? self.notes,
            updated: updated ?? self.updated,
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
