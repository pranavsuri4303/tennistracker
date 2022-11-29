// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let point = try Point(json)

import Foundation

// MARK: - Point
class Point: Codable {
    var pointDuration: String?
    var pointNumber: Int?
    var shots: [Shot?]?
    var side1Score, side2Score: String?
    var timestamp: Date?
    var winningSide: Int?
    var winReason: String?

    init(pointDuration: String?, pointNumber: Int?, shots: [Shot?]?, side1Score: String?, side2Score: String?, timestamp: Date?, winningSide: Int?, winReason: String?) {
        self.pointDuration = pointDuration
        self.pointNumber = pointNumber
        self.shots = shots
        self.side1Score = side1Score
        self.side2Score = side2Score
        self.timestamp = timestamp
        self.winningSide = winningSide
        self.winReason = winReason
    }
}

// MARK: Point convenience initializers and mutators

extension Point {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Point.self, from: data)
        self.init(pointDuration: me.pointDuration, pointNumber: me.pointNumber, shots: me.shots, side1Score: me.side1Score, side2Score: me.side2Score, timestamp: me.timestamp, winningSide: me.winningSide, winReason: me.winReason)
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
        pointDuration: String?? = nil,
        pointNumber: Int?? = nil,
        shots: [Shot?]?? = nil,
        side1Score: String?? = nil,
        side2Score: String?? = nil,
        timestamp: Date?? = nil,
        winningSide: Int?? = nil,
        winReason: String?? = nil
    ) -> Point {
        return Point(
            pointDuration: pointDuration ?? self.pointDuration,
            pointNumber: pointNumber ?? self.pointNumber,
            shots: shots ?? self.shots,
            side1Score: side1Score ?? self.side1Score,
            side2Score: side2Score ?? self.side2Score,
            timestamp: timestamp ?? self.timestamp,
            winningSide: winningSide ?? self.winningSide,
            winReason: winReason ?? self.winReason
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
