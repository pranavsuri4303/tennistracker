//
//  StringEntries.swift
//  Tennis
//
//  Created by Pranav Suri on 7/12/22.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class StringEntries: Codable, Equatable {
    
    var count: Int?
    var lastUpdated: Timestamp?
    var stringEntries: [StringEntry?]?
    
    internal init(count: Int? = nil, lastUpdated: Timestamp? = nil, stringEntries: [StringEntry?]? = nil) {
        self.count = count
        self.lastUpdated = lastUpdated
        self.stringEntries = stringEntries
    }
    
    enum CodingKeys: String, CodingKey {
        case count
        case lastUpdated
        case stringEntries
    }
    
    static func == (lhs: StringEntries, rhs: StringEntries) -> Bool {
        return lhs.count == rhs.count &&
        lhs.lastUpdated == rhs.lastUpdated &&
        lhs.stringEntries == rhs.stringEntries
    }
}

class StringEntry: Codable, Equatable {
    var stringName: String?
    var crossTension: Int?
    var mainTension: Int?
    var stringingDate: Timestamp?
    var lastUpdated: Timestamp?
    var firestoreData: [String: Any]? {
        [
            "stringName": stringName,
            "crossTension": crossTension,
            "mainTension": mainTension,
            "stringingDate": stringingDate,
            "lastUpdated": lastUpdated
        ]
    }
    
    internal init(stringName: String? = nil, crossTension: Int? = nil, mainTension: Int? = nil, stringingDate: Timestamp? = nil, lastUpdated: Timestamp? = nil) {
        self.stringName = stringName
        self.crossTension = crossTension
        self.mainTension = mainTension
        self.stringingDate = stringingDate
        self.lastUpdated = lastUpdated
    }
    
    enum CodingKeys: String, CodingKey {
        case stringName
        case crossTension
        case mainTension
        case stringingDate
        case lastUpdated
    }
    static func == (lhs: StringEntry, rhs: StringEntry) -> Bool {
        return lhs.stringName == rhs.stringName &&
        lhs.crossTension == rhs.crossTension &&
        lhs.mainTension == rhs.mainTension &&
        lhs.stringingDate == rhs.stringingDate &&
        lhs.lastUpdated == rhs.lastUpdated
    }
}
