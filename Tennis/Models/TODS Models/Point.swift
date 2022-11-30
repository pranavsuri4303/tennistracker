// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let point = try? newJSONDecoder().decode(Point.self, from: jsonData)

import Foundation

// MARK: - Point
class Point: Codable, Equatable {
    var pointDuration: String?
    var pointNumber: Int?
    var shots: [Shot?]?
    var side1Score: String?
    var side2Score: String?
    var timestamp: Date?
    var winningSide: Int?
    var winReason: String?
    
    internal init(pointDuration: String?, pointNumber: Int?, shots: [Shot?]?, side1Score: String?, side2Score: String?, timestamp: Date?, winningSide: Int?, winReason: String?) {
        self.pointDuration = pointDuration
        self.pointNumber = pointNumber
        self.shots = shots
        self.side1Score = side1Score
        self.side2Score = side2Score
        self.timestamp = timestamp
        self.winningSide = winningSide
        self.winReason = winReason
    }
    
    enum CodingKeys: String, CodingKey {
        case pointDuration = "pointDuration"
        case pointNumber = "pointNumber"
        case shots = "shots"
        case side1Score = "side1Score"
        case side2Score = "side2Score"
        case timestamp = "timestamp"
        case winningSide = "winningSide"
        case winReason = "winReason"
    }
    static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.pointDuration == rhs.pointDuration &&
        lhs.pointNumber == rhs.pointNumber &&
        lhs.shots == rhs.shots &&
        lhs.side1Score == rhs.side1Score &&
        lhs.side2Score == rhs.side2Score &&
        lhs.timestamp == rhs.timestamp &&
        lhs.winningSide == rhs.winningSide &&
        lhs.winReason == rhs.winReason
    }
}
