// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let player = try? newJSONDecoder().decode(Player.self, from: jsonData)

import Foundation

// MARK: - Player
class Player: Codable, Equatable {
    var participant: Participant1?
    var playerNumber: Int?

    internal init(participant: Participant1?, playerNumber: Int?) {
        self.participant = participant
        self.playerNumber = playerNumber
    }
    
    enum CodingKeys: String, CodingKey {
        case participant = "participant"
        case playerNumber = "playerNumber"
    }

    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.participant == rhs.participant &&
        lhs.playerNumber == rhs.playerNumber
    }
}
