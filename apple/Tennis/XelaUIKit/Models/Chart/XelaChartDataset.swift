//
//  XelaChartDataset.swift
//  XelaExampleApp
//
//  Created by Sherhan on 08.08.2021.
//

import SwiftUI
struct XelaLineChartDataset: Hashable {
    var label: String
    var data: [CGFloat]
    var borderColor: Color = .init(xelaColor: .Gray11)
    var pointColor: Color = .init(xelaColor: .Gray11)
    var fillColor: Color = .clear
    var tension: CGFloat = 0.1
}

struct XelaBarChartDataset: Hashable {
    var label: String
    var data: [CGFloat]
    var fillColor: Color = .init(xelaColor: .Blue3)
}

struct XelaPieChartDataset: Hashable {
    var label: String
    var data: [CGFloat]
    var fillColors: [Color]
}

struct XelaDoughnutChartDataset: Hashable {
    var label: String
    var data: [CGFloat]
    var fillColors: [Color]
}
