//
//  KymaPieDatasets.swift
//  
//
//  Created by Pranav Suri on 09.08.2021.
//

import SwiftUI
class KymaPieDatasets: ObservableObject {
    @Published var dataset:KymaPieChartDataset
    @Published var sum:CGFloat
    @Published var startDegrees:[Double] = [Double]()
    @Published var endDegrees:[Double] = [Double]()
    
    init(dataset:KymaPieChartDataset, total:CGFloat? = nil) {
        self.dataset = dataset
        
        if total != nil {
            sum = total!
        }
        else {
            sum = 0
            for data in dataset.data {
                self.sum += data
            }
        }
        
        var tempEndDegrees:Double = -90
        for data in dataset.data {
            let temp = Double((data * 360 / self.sum))
            startDegrees.append(tempEndDegrees)
            endDegrees.append(tempEndDegrees + temp)
            
           
            
            tempEndDegrees += temp
            
            
        }
    }
}

