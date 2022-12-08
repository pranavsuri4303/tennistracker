//
//  KymaChartDataset.swift
//  
//
//  Created by Pranav Suri on 08.08.2021.
//

import SwiftUI
struct KymaLineChartDataset:Hashable {
    var label:String
    var data:[CGFloat]
    var borderColor:Color = Color(KymaColor: .Gray11)
    var pointColor:Color = Color(KymaColor: .Gray11)
    var fillColor:Color = Color.clear
    var tension:CGFloat = 0.1
}

struct KymaBarChartDataset:Hashable {
    var label:String
    var data:[CGFloat]
    var fillColor:Color = Color(KymaColor: .Blue3)
}

struct KymaPieChartDataset:Hashable {
    var label:String
    var data:[CGFloat]
    var fillColors:[Color]
}

struct KymaDoughnutChartDataset:Hashable {
    var label:String
    var data:[CGFloat]
    var fillColors:[Color]
}
