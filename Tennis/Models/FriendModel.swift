//
//  FriendModel.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Foundation
public struct FriendModel: Codable {

    let name: String
    let state: String?
    let country: String?
    let isCapital: Bool?
    let population: Int64?

    enum CodingKeys: String, CodingKey {
        case name
        case state
        case country
        case isCapital = "capital"
        case population
    }
}
