//
//  KymaChartBody.swift
//  
//
//  Created by Pranav Suri on 08.08.2021.
//

import SwiftUI

struct KymaLineChartBody: View {
    var type:KymaChartType
    var labels:[String]
    @ObservedObject var datasets:KymaLineDatasets
    
    var labelsColor:Color = Color(KymaColor: .Gray6)
    var chartBorderColor:Color = Color(KymaColor: .Gray8)
    
    var labelsFormat:String = "%.0f"
    var beforeLabel:String = ""
    var afterLabel:String = ""
    
    var body: some View {
        GeometryReader { geometryReader in
            ZStack {
                VStack(spacing:0) {
                    ForEach(datasets.steps, id: \.self) { step in
                        HStack {
                            HStack {
                                Text(beforeLabel+String(format: labelsFormat, step)+afterLabel)
                                //Text(String("\(Int(step))")+"$")
                                    .KymaCaption()
                                    .foregroundColor(labelsColor)
                            }
                            //.frame(width:30, alignment:.leading)
                            KymaDivider(orientation:.Horizontal, color:chartBorderColor)
                        }
                        .frame(height:getCellHeight(height: geometryReader.size.height))
                    }
                }

                HStack(spacing:0) {
                    ForEach(labels, id:\.self) { label in
                        VStack {
                            KymaDivider(orientation:.Vertical, color:chartBorderColor)
                                //.frame(height: getCellHeight(height: geometryReader.size.height) * CGFloat(datasets.steps.count) - 20)
                                //.offset(y:-20)
                            Text(label)
                                .KymaCaption()
                                .foregroundColor(labelsColor)
                                //.frame(height:56, alignment:.bottom)
                        }
                        .frame(width:getCellWidth(width: geometryReader.size.width), height: getCellHeight(height: geometryReader.size.height) * CGFloat(datasets.steps.count))
                    }
                }

                
                LineChartBodyView(geometryReader: geometryReader, datasets: datasets, labelsCount: labels.count, stepsCount: datasets.steps.count)
                
                
            }
            
        }
    }
    
    func getCellWidth(width:CGFloat) -> CGFloat {
        return width/CGFloat(labels.count)
    }
    
    func getCellHeight(height:CGFloat) -> CGFloat {
        return height/CGFloat(datasets.steps.count)
    }
}

@ViewBuilder
func LineChartBodyView(geometryReader:GeometryProxy, datasets:KymaLineDatasets, labelsCount:Int, stepsCount:Int) -> some View {
    ZStack {
        ForEach(datasets.datasets, id:\.self) { dataset in
            ZStack {
                LineChartFill(dataset: dataset, geometryReader: geometryReader, datasets: datasets, labelsCount: labelsCount, stepsCount: stepsCount)

                if dataset.borderColor != Color.clear {
                    KymaChartLineShape(data:dataset.data, cellWidth: (geometryReader.size.width/CGFloat(labelsCount)), cellHeight: (geometryReader.size.height/CGFloat(stepsCount)), dataStep: datasets.dataStep, firstStep: datasets.steps.last!, tension: dataset.tension)
                        .stroke(dataset.borderColor, lineWidth: 2)
                }

                if dataset.pointColor != Color.clear {
                    ForEach(0..<dataset.data.count) { i in
                        LineChartPoint(i: i, geometryReader: geometryReader, dataset: dataset, datasets: datasets, labelsCount: labelsCount, stepsCount: stepsCount)
                    }

                }
            }
        }
    }
}

@ViewBuilder
func LineChartFill(dataset:KymaLineChartDataset, geometryReader:GeometryProxy, datasets:KymaLineDatasets, labelsCount:Int, stepsCount:Int) -> some View {
    if dataset.fillColor != Color.clear {
        KymaChartLineShape(data:dataset.data, cellWidth: (geometryReader.size.width / CGFloat(labelsCount)), cellHeight: (geometryReader.size.height/CGFloat(stepsCount)), dataStep: datasets.dataStep, firstStep: datasets.steps.last!, tension: dataset.tension, filled: true)
            .fill(dataset.fillColor.opacity(0.24))
    }
}

@ViewBuilder
func LineChartPoint(i:Int, geometryReader:GeometryProxy, dataset:KymaLineChartDataset, datasets:KymaLineDatasets, labelsCount:Int, stepsCount:Int) -> some View {
    Circle()
        .fill(Color(.white))
        .frame(width:6, height:6)
        .overlay(
            Circle()
                .stroke(dataset.pointColor, lineWidth:2)

        )
        .offset(x: CGFloat(i)*(geometryReader.size.width/CGFloat(labelsCount)) - geometryReader.size.width/2 + (geometryReader.size.width/CGFloat(labelsCount))/2, y: geometryReader.size.height - (dataset.data[i]*(( geometryReader.size.height/CGFloat(stepsCount))/datasets.dataStep)) + datasets.steps.last!*(( geometryReader.size.height/CGFloat(stepsCount))/datasets.dataStep) - (geometryReader.size.height/CGFloat(stepsCount))/2 - 1 - geometryReader.size.height/2)
}
