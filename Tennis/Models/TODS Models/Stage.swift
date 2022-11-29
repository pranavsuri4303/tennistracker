// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let stage = try Stage(json)

import Foundation

// MARK: - Stage
class Stage: Codable {
    var draws: [Draw?]?
    var entries: [Entry?]?
    var name: String?
    var sortOrder: Int?
    var stageID, stageType: String?

    enum CodingKeys: String, CodingKey {
        case draws, entries, name, sortOrder
        case stageID = "stageId"
        case stageType
    }

    init(draws: [Draw?]?, entries: [Entry?]?, name: String?, sortOrder: Int?, stageID: String?, stageType: String?) {
        self.draws = draws
        self.entries = entries
        self.name = name
        self.sortOrder = sortOrder
        self.stageID = stageID
        self.stageType = stageType
    }
}

// MARK: Stage convenience initializers and mutators

extension Stage {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Stage.self, from: data)
        self.init(draws: me.draws, entries: me.entries, name: me.name, sortOrder: me.sortOrder, stageID: me.stageID, stageType: me.stageType)
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
        draws: [Draw?]?? = nil,
        entries: [Entry?]?? = nil,
        name: String?? = nil,
        sortOrder: Int?? = nil,
        stageID: String?? = nil,
        stageType: String?? = nil
    ) -> Stage {
        return Stage(
            draws: draws ?? self.draws,
            entries: entries ?? self.entries,
            name: name ?? self.name,
            sortOrder: sortOrder ?? self.sortOrder,
            stageID: stageID ?? self.stageID,
            stageType: stageType ?? self.stageType
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
