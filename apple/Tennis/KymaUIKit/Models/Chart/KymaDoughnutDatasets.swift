//
//  KymaDoughnutDatasets.swift
//  
//
//  Created by Pranav Suri on 10.08.2021.
//

import SwiftUI
class KymaDoughnutDatasets: ObservableObject {
    @Published var datasets:[KymaDoughnutChartDataset]
    @Published var sum:CGFloat
    @Published var startDegreeses:[[Double]] = [[Double]]()
    @Published var endDegreeses:[[Double]] = [[Double]]()
    
    init(datasets:[KymaDoughnutChartDataset], total:CGFloat) {
        self.datasets = datasets
        
        sum = total
        for i in 0..<datasets.count {
            let dataset = datasets[i]
            var startDegrees:[Double] = [Double]()
            var endDegrees:[Double] = [Double]()
            var tempEndDegrees:Double = -90
            for data in dataset.data {
                let temp = Double((data * 360 / self.sum))
                startDegrees.append(tempEndDegrees)
                endDegrees.append(tempEndDegrees + temp)
                
                tempEndDegrees += temp
                
            }
            
            //print(tempEndDegrees)
            
            startDegrees.append(tempEndDegrees)
            endDegrees.append(tempEndDegrees + 360 - tempEndDegrees)
            
            self.datasets[i].fillColors.append(Color(KymaColor: .Gray11))
            
            
            startDegreeses.append(startDegrees)
            endDegreeses.append(endDegrees)
        }
    }
}
