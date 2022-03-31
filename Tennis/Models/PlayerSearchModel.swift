//
//  PlayerSearchModel.swift
//  Tennis
//
//  Created by Pranav Suri on 29/3/22.
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome

struct PlayerSearchModel: Decodable {
    let hits: [Hit]?
    let nbHits, page, nbPages, hitsPerPage: Int?
    let exhaustiveNbHits, exhaustiveTypo: Bool?
    let query: String?
    let params: String?
    let renderingContent: RenderingContent
    let processingTimeMS: Int?
}

// MARK: - Hit

struct Hit: Decodable, Identifiable {
    var id = UUID()
    let path, firstName, lastName, email: String
    let lastmodified: Int
    let objectID: String
    let highlightResult: HighlightResult

    enum CodingKeys: String, CodingKey {
        case path, firstName, lastName, email, lastmodified, objectID
        case highlightResult = "_highlightResult"
    }
}

// MARK: - HighlightResult

struct HighlightResult: Codable {
    let firstName, lastName, email: HighlightedResult
}

// MARK: - Email

struct HighlightedResult: Codable {
    let value: String
    let matchLevel: String
    let fullyHighlighted: Bool?
    let matchedWords: [String]
}

// MARK: - RenderingContent

struct RenderingContent: Codable {}

extension Hit: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}
