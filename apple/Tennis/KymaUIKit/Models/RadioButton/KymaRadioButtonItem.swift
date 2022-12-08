//
//  KymaRadioButtonItem.swift
//  
//
//  Created by Pranav Suri on 02.08.2021.
//

import Foundation
struct KymaRadioButtonItem: Identifiable {
    public var id:String
    public var label:String
    public var caption:String
    public var value:String = ""
    public var state:KymaRadioButtonState = .Default
}
