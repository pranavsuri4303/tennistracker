//
//  Models.swift
//  Tennis
//
//  Created by Pranav Suri on 6/2/21.
//

import Foundation
import SwiftUI

struct StringModel : Hashable  {
    let id : String
    let cross : Int
    var date : TimeInterval
    var mains : Int
    var name : String
}

struct PlayerModel : Hashable  {
    let id = UUID.init()
    let uid : String
    let name : String
    let gender: String
    let imagePath : String
    let nationality: String
    var downloadedImage : UIImage? = nil
    
}
