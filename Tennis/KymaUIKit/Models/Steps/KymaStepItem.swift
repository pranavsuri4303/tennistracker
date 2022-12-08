//
//  KymaStepItem.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaStepItem: Identifiable {
    
    
    public var id: Int
    public var title:String
    public var caption:String
    public var state:KymaStepsState


    init(id:Int, title:String = "", caption:String = "", state:KymaStepsState = .Default) {
        self.id = id
        self.title = title
        self.caption = caption
        self.state = state
    }
}

