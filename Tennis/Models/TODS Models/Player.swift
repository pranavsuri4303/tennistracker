// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let player = try Player(json)

import Foundation

// MARK: - Player
class Player: Codable {
    var participant: Participant?
    var playerNumber: Int?

    init(participant: Participant?, playerNumber: Int?) {
        self.participant = participant
        self.playerNumber = playerNumber
    }
}

// MARK: Player convenience initializers and mutators

extension Player {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Player.self, from: data)
        self.init(participant: me.participant, playerNumber: me.playerNumber)
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
        participant: Participant?? = nil,
        playerNumber: Int?? = nil
    ) -> Player {
        return Player(
            participant: participant ?? self.participant,
            playerNumber: playerNumber ?? self.playerNumber
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
