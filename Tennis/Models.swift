//
//  Models.swift
//  Tennis
//
//  Created by Pranav Suri on 6/2/21.
//

import Foundation
import SwiftUI

struct StringModel: Hashable {
    let id: String
    let cross: Int
    let date: TimeInterval
    let mains: Int
    let name: String
}

struct PlayerModel: Hashable {
    let id = UUID()
    let uid: String
    let name: String
    let gender: String
    let imagePath: String
    let nationality: String
    var downloadedImage: UIImage?
}
