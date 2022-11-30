// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let stage = try? newJSONDecoder().decode(Stage.self, from: jsonData)

import Foundation

// MARK: - Stage
class Stage: Codable, Equatable {
    var draws: [Draw?]?
    var entries: [Entry?]?
    var name: String?
    var sortOrder: Int?
    var stageID: String?
    var stageType: String?

    internal init(draws: [Draw?]?, entries: [Entry?]?, name: String?, sortOrder: Int?, stageID: String?, stageType: String?) {
        self.draws = draws
        self.entries = entries
        self.name = name
        self.sortOrder = sortOrder
        self.stageID = stageID
        self.stageType = stageType
    }
    
    enum CodingKeys: String, CodingKey {
        case draws = "draws"
        case entries = "entries"
        case name = "name"
        case sortOrder = "sortOrder"
        case stageID = "stageId"
        case stageType = "stageType"
    }

    static func == (lhs: Stage, rhs: Stage) -> Bool {
        return lhs.draws == rhs.draws &&
        lhs.entries == rhs.entries &&
        lhs.name == rhs.name &&
        lhs.sortOrder == rhs.sortOrder &&
        lhs.stageID == rhs.stageID &&
        lhs.stageType == rhs.stageType
    }
}
