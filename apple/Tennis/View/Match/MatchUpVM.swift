//
//  MatchUpVM.swift
//  Tennis
//
//  Created by Pranav Suri on 18/1/23.
//

import Foundation
class MatchUpVM: ObservableObject {
    @Published var matchUpFormat = MatchUpFormatModel(bestOf: NoOfSets.three, setFormat: SetFormatModel(noAd: false, tiebreakAt: 0, setTo: 1, tiebreakFormat: TiebreakFormatModel(noAd: false, tiebreakTo: 0)))
}

struct MatchUpFormatModel: Codable, Equatable {
    internal init(bestOf: NoOfSets? = nil, setFormat: SetFormatModel? = nil, finalSetFormat: SetFormatModel? = nil) {
        self.bestOf = bestOf
        self.setFormat = setFormat
        self.finalSetFormat = finalSetFormat
    }
    
    var bestOf: NoOfSets?
    var setFormat: SetFormatModel?
    var finalSetFormat: SetFormatModel?
    
    static func == (lhs: MatchUpFormatModel, rhs: MatchUpFormatModel) -> Bool {
        return lhs.bestOf == rhs.bestOf &&
        lhs.setFormat == rhs.setFormat &&
        lhs.finalSetFormat == rhs.finalSetFormat
    }
    
    enum CodingKeys: CodingKey {
        case bestOf
        case setFormat
        case finalSetFormat
    }
    
    init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<MatchUpFormatModel.CodingKeys> = try decoder.container(keyedBy: MatchUpFormatModel.CodingKeys.self)
        
        self.bestOf = try container.decodeIfPresent(NoOfSets.self, forKey: MatchUpFormatModel.CodingKeys.bestOf)
        self.setFormat = try container.decodeIfPresent(SetFormatModel.self, forKey: MatchUpFormatModel.CodingKeys.setFormat)
        self.finalSetFormat = try container.decodeIfPresent(SetFormatModel.self, forKey: MatchUpFormatModel.CodingKeys.finalSetFormat)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container: KeyedEncodingContainer<MatchUpFormatModel.CodingKeys> = encoder.container(keyedBy: MatchUpFormatModel.CodingKeys.self)
        
        try container.encodeIfPresent(self.bestOf, forKey: MatchUpFormatModel.CodingKeys.bestOf)
        try container.encodeIfPresent(self.setFormat, forKey: MatchUpFormatModel.CodingKeys.setFormat)
        try container.encodeIfPresent(self.finalSetFormat, forKey: MatchUpFormatModel.CodingKeys.finalSetFormat)
    }
}

struct SetFormatModel: Codable, Equatable {
    internal init(noAd: Bool? = nil, tiebreakAt: Int? = nil, setTo: Int? = nil, tiebreakFormat: TiebreakFormatModel? = nil) {
        self.noAd = noAd
        self.tiebreakAt = tiebreakAt
        self.setTo = setTo
        self.tiebreakFormat = tiebreakFormat
    }
    
    var noAd: Bool?
    var tiebreakAt: Int?
    var setTo: Int?
    var tiebreakFormat: TiebreakFormatModel?
    
    static func == (lhs: SetFormatModel, rhs: SetFormatModel) -> Bool {
        return lhs.noAd == rhs.noAd &&
        lhs.tiebreakAt == rhs.tiebreakAt &&
        lhs.setTo == rhs.setTo &&
        lhs.tiebreakFormat == rhs.tiebreakFormat
    }
    
    enum CodingKeys: CodingKey {
        case noAd
        case tiebreakAt
        case setTo
        case tiebreakFormat
    }
    
    init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<SetFormatModel.CodingKeys> = try decoder.container(keyedBy: SetFormatModel.CodingKeys.self)
        
        self.noAd = try container.decodeIfPresent(Bool.self, forKey: SetFormatModel.CodingKeys.noAd)
        self.tiebreakAt = try container.decodeIfPresent(Int.self, forKey: SetFormatModel.CodingKeys.tiebreakAt)
        self.setTo = try container.decodeIfPresent(Int.self, forKey: SetFormatModel.CodingKeys.setTo)
        self.tiebreakFormat = try container.decodeIfPresent(TiebreakFormatModel.self, forKey: SetFormatModel.CodingKeys.tiebreakFormat)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container: KeyedEncodingContainer<SetFormatModel.CodingKeys> = encoder.container(keyedBy: SetFormatModel.CodingKeys.self)
        
        try container.encodeIfPresent(self.noAd, forKey: SetFormatModel.CodingKeys.noAd)
        try container.encodeIfPresent(self.tiebreakAt, forKey: SetFormatModel.CodingKeys.tiebreakAt)
        try container.encodeIfPresent(self.setTo, forKey: SetFormatModel.CodingKeys.setTo)
        try container.encodeIfPresent(self.tiebreakFormat, forKey: SetFormatModel.CodingKeys.tiebreakFormat)
    }
}

struct TiebreakFormatModel: Codable, Equatable {
    internal init(noAd: Bool? = nil, tiebreakTo: Int? = nil) {
        self.noAd = noAd
        self.tiebreakTo = tiebreakTo
    }
    
    var noAd: Bool?
    var tiebreakTo: Int?
    
    static func == (lhs: TiebreakFormatModel, rhs: TiebreakFormatModel) -> Bool {
        return lhs.noAd == rhs.noAd &&
        lhs.tiebreakTo == rhs.tiebreakTo
    }
    
    enum CodingKeys: CodingKey {
        case noAd
        case tiebreakTo
    }
    
    init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<TiebreakFormatModel.CodingKeys> = try decoder.container(keyedBy: TiebreakFormatModel.CodingKeys.self)
        
        self.noAd = try container.decodeIfPresent(Bool.self, forKey: TiebreakFormatModel.CodingKeys.noAd)
        self.tiebreakTo = try container.decodeIfPresent(Int.self, forKey: TiebreakFormatModel.CodingKeys.tiebreakTo)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container: KeyedEncodingContainer<TiebreakFormatModel.CodingKeys> = encoder.container(keyedBy: TiebreakFormatModel.CodingKeys.self)
        
        try container.encodeIfPresent(self.noAd, forKey: TiebreakFormatModel.CodingKeys.noAd)
        try container.encodeIfPresent(self.tiebreakTo, forKey: TiebreakFormatModel.CodingKeys.tiebreakTo)
    }
}


enum NoOfSets: String, CaseIterable, Identifiable {
    case one
    case three
    case five
    
    var value: Int {
        switch self {
        case .one: return 1
        case .three: return 3
        case .five: return 5
        }
    }

    var code: String {
        switch self {
        case .one: return "1"
        case .three: return "3"
        case .five: return "5"
        }
    }

    var extendedCode: String {
        switch self {
        case .one: return "1 Set"
        case .three: return "3 Sets"
        case .five: return "5 Sets"
        }
    }

    var description: String {
        switch self {
        case .one: return "Best of 1 Set"
        case .three: return "Best of 3 Sets"
        case .five: return "Best of 5 Sets"
        }
    }

    var id: NoOfSets { self }

    static func getNoOfSets(noOfSets: String) -> NoOfSets {
        switch noOfSets {
        case "1":
            return .one
        case "3":
            return .three
        case "5":
            return .five
        default:
            return .three
        }
    }
}

extension NoOfSets: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = NoOfSets.getNoOfSets(noOfSets: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
