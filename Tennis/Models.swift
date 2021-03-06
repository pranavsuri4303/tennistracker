//
//  Models.swift
//  Tennis
//
//  Created by Pranav Suri on 6/2/21.
//

import Foundation
import SwiftUI

struct PlayerModel: Hashable {
    let id = UUID()
    let uid: String
    let name: String
    let firstName: String
    let lastName: String
    let gender: String
    let imagePath: String
    let nationality: String
    var downloadedImage: UIImage?
}
