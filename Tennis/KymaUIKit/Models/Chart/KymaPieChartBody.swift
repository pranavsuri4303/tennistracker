//
//  KymaPieChartBody.swift
//  
//
//  Created by Pranav Suri on 09.08.2021.
//

import SwiftUI

struct KymaPieChartBody: View {
    
    var dataset:KymaPieDatasets
    var background:Color = Color(KymaColor: .Gray11)
    
    var endDegrees:Double = 0
    
    var body: some View {
        GeometryReader { geometryReader in
            ZStack {
                Circle()
                    .fill(background)
                
                ForEach(0..<dataset.dataset.data.count) { i in
                    KymaChartPieItemShape(startAngle: .init(degrees: dataset.startDegrees[i]), endAngle: .init(degrees: dataset.endDegrees[i]))
                        .fill(dataset.dataset.fillColors[i])
                }
            }
        }
        
    }
}
