//
//  KymaChart.swift
//  
//
//  Created by Pranav Suri on 08.08.2021.
//

import SwiftUI

struct KymaChart: View {
    
    var type:KymaChartType
    var labels:[String] = [String]()
    var datasetsLineChart:KymaLineDatasets? = nil
    var datasetsBarChart:KymaBarDatasets? = nil
    var datasetPieChart:KymaPieDatasets? = nil
    var datasetsDoughnutChart:KymaDoughnutDatasets? = nil
    
    var labelsColor:Color = Color(KymaColor: .Gray6)
    var chartBorderColor:Color = Color(KymaColor: .Gray12)
    var pieBackgroundColor:Color = Color(KymaColor: .Gray11)
    var doughnutBackgroundColor:Color = Color(.white)
    var doughnutEmptyColor:Color = Color(KymaColor: .Gray12)
    
    var labelsFormat:String = "%.0f"
    var beforeLabel:String = ""
    var afterLabel:String = ""
    
    var body: some View {
        VStack {
            if type == .Line && datasetsLineChart != nil {
                KymaLineChartBody(type: type, labels: labels, datasets: datasetsLineChart!, labelsColor: labelsColor, chartBorderColor: chartBorderColor, labelsFormat: labelsFormat, beforeLabel: beforeLabel, afterLabel: afterLabel)
            }
            else if type == .Bar && datasetsBarChart != nil {
                KymaBarChartBody(type: type, labels: labels, datasets: datasetsBarChart!, labelsColor: labelsColor, chartBorderColor: chartBorderColor, labelsFormat: labelsFormat, beforeLabel: beforeLabel, afterLabel: afterLabel)
            }
            else if type == .Pie && datasetPieChart != nil {
                KymaPieChartBody(dataset:datasetPieChart!, background: pieBackgroundColor)
            }
            else if type == .Doughnut && datasetsDoughnutChart != nil {
                KymaDoughnutChartBody(datasets:datasetsDoughnutChart!, background: doughnutBackgroundColor, emptyColor: doughnutEmptyColor)
            }
            
        }
    }
    
    
    
    
}

