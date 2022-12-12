//
//  ChartsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ChartsComponent: View {
    @StateObject var doughnutDatasets = XelaDoughnutDatasets(datasets: [
        XelaDoughnutChartDataset(label: "UI/UX Design", data: [80], fillColors: [Color(xelaColor: .Green2)]),
        XelaDoughnutChartDataset(label: "Graphic Design", data: [70], fillColors: [Color(xelaColor: .Purple3)]),
        XelaDoughnutChartDataset(label: "Logotypes", data: [55], fillColors: [Color(xelaColor: .Orange3)]),
        XelaDoughnutChartDataset(label: "Illustrations", data: [25], fillColors: [Color(xelaColor: .Blue3)]),
    ], total: 100)

    @StateObject var datasets = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "Today", data: [9, 10, 12, 9, 12], borderColor: Color(xelaColor: .Pink3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Yesterday", data: [6, 7, 2, 10, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets1 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets2 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color(xelaColor: .Pink3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color(xelaColor: .Blue3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color(xelaColor: .Green3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color(xelaColor: .Purple3), fillColor: Color.clear, tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets3 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color(xelaColor: .Pink3), fillColor: Color(xelaColor: .Pink3), tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color(xelaColor: .Blue3), fillColor: Color(xelaColor: .Blue3), tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color(xelaColor: .Green3), fillColor: Color(xelaColor: .Green3), tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color(xelaColor: .Purple3), fillColor: Color(xelaColor: .Purple3), tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets4 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color.clear, fillColor: Color(xelaColor: .Pink3), tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color.clear, fillColor: Color(xelaColor: .Blue3), tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color.clear, fillColor: Color(xelaColor: .Green3), tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color.clear, fillColor: Color(xelaColor: .Purple3), tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets5 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Pink3), tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Blue3), tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Green3), tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Purple3), tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets6 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color.clear, pointColor: Color(xelaColor: .Pink3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color.clear, pointColor: Color(xelaColor: .Blue3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color.clear, pointColor: Color(xelaColor: .Green3), fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color.clear, pointColor: Color(xelaColor: .Purple3), fillColor: Color.clear, tension: 0.5),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets7 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color.clear, fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color.clear, fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color.clear, fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color.clear, fillColor: Color.clear, tension: 0),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets8 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color(xelaColor: .Pink3), fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color(xelaColor: .Blue3), fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color(xelaColor: .Green3), fillColor: Color.clear, tension: 0),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color(xelaColor: .Purple3), fillColor: Color.clear, tension: 0),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets9 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color(xelaColor: .Pink3), fillColor: Color(xelaColor: .Pink3), tension: 0),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color(xelaColor: .Blue3), fillColor: Color(xelaColor: .Blue3), tension: 0),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color(xelaColor: .Green3), fillColor: Color(xelaColor: .Green3), tension: 0),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color(xelaColor: .Purple3), fillColor: Color(xelaColor: .Purple3), tension: 0),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets10 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color(xelaColor: .Pink3), pointColor: Color.clear, fillColor: Color(xelaColor: .Pink3), tension: 0),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color(xelaColor: .Blue3), pointColor: Color.clear, fillColor: Color(xelaColor: .Blue3), tension: 0),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color(xelaColor: .Green3), pointColor: Color.clear, fillColor: Color(xelaColor: .Green3), tension: 0),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color(xelaColor: .Purple3), pointColor: Color.clear, fillColor: Color(xelaColor: .Purple3), tension: 0),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var datasets11 = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "First", data: [9, 15, 18, 5, 20], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Pink3), tension: 0),
            XelaLineChartDataset(label: "Second", data: [6, 7, 2, 14, 1], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Blue3), tension: 0),
            XelaLineChartDataset(label: "Third", data: [4, 9, 20, 12, 5], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Green3), tension: 0),
            XelaLineChartDataset(label: "Fourth", data: [12, 3, 22, 8, 18], borderColor: Color.clear, pointColor: Color.clear, fillColor: Color(xelaColor: .Purple3), tension: 0),
        ],
        dataStep: 5,
        beginAtZero: true
    )

    @StateObject var bar1Datasets: XelaBarDatasets = .init(datasets: [
        XelaBarChartDataset(label: "First Dataset", data: [20, 30, 40, 10, 20], fillColor: Color(xelaColor: .Blue3)),
        XelaBarChartDataset(label: "Second Dataset", data: [10, 25, 37, 18, 28], fillColor: Color(xelaColor: .Pink3)),
        XelaBarChartDataset(label: "Second Dataset", data: [10, 25, 37, 18, 28], fillColor: Color(xelaColor: .Green3)),
        XelaBarChartDataset(label: "Third Dataset", data: [15, 40, 50, 38, 18], fillColor: Color(xelaColor: .Orange3)),
    ], dataStep: 5)

    @StateObject var bar2Datasets: XelaBarDatasets = .init(datasets: [
        XelaBarChartDataset(label: "First Dataset", data: [20, 30, 40, 10, 20], fillColor: Color(xelaColor: .Blue3)),
        XelaBarChartDataset(label: "Second Dataset", data: [10, 25, 37, 18, 28], fillColor: Color(xelaColor: .Pink3)),
        XelaBarChartDataset(label: "Second Dataset", data: [10, 25, 37, 18, 28], fillColor: Color(xelaColor: .Green3)),
    ], dataStep: 5)

    @StateObject var bar3Datasets: XelaBarDatasets = .init(datasets: [
        XelaBarChartDataset(label: "First Dataset", data: [20, 30, 40, 10, 20], fillColor: Color(xelaColor: .Blue3)),
        XelaBarChartDataset(label: "Second Dataset", data: [10, 25, 37, 18, 28], fillColor: Color(xelaColor: .Pink3)),
    ], dataStep: 5)

    @StateObject var bar4Datasets: XelaBarDatasets = .init(datasets: [
        XelaBarChartDataset(label: "First Dataset", data: [20, 30, 40, 10, 20], fillColor: Color(xelaColor: .Blue3)),
    ], dataStep: 5)

    @StateObject var pieDataset = XelaPieDatasets(dataset: XelaPieChartDataset(label: "First Dataset", data: [20, 30, 30, 10], fillColors: [Color(xelaColor: .Blue3), Color(xelaColor: .Pink3), Color(xelaColor: .Green3), Color(xelaColor: .Orange3), Color(xelaColor: .Yellow3)]), total: nil)

    @StateObject var pie2Dataset = XelaPieDatasets(dataset: XelaPieChartDataset(label: "First Dataset", data: [40], fillColors: [Color(xelaColor: .Blue3)]), total: 200)

    @StateObject var doughnut1Datasets = XelaDoughnutDatasets(datasets: [
        XelaDoughnutChartDataset(label: "UI/UX Design", data: [80], fillColors: [Color(xelaColor: .Green2)]),
        XelaDoughnutChartDataset(label: "Graphic Design", data: [70], fillColors: [Color(xelaColor: .Purple3)]),
        XelaDoughnutChartDataset(label: "Logotypes", data: [55], fillColors: [Color(xelaColor: .Orange3)]),
        XelaDoughnutChartDataset(label: "Illustrations", data: [25], fillColors: [Color(xelaColor: .Blue3)]),
    ], total: 100)

    @StateObject var doughnut2Datasets = XelaDoughnutDatasets(datasets: [
        XelaDoughnutChartDataset(label: "UI/UX Design", data: [20, 20, 30], fillColors: [Color(xelaColor: .Green2), Color(xelaColor: .Purple3), Color(xelaColor: .Orange3)]),
        XelaDoughnutChartDataset(label: "Graphic Design", data: [10, 20, 50], fillColors: [Color(xelaColor: .Green2), Color(xelaColor: .Purple3), Color(xelaColor: .Orange3)]),
        XelaDoughnutChartDataset(label: "Logotypes", data: [55, 45], fillColors: [Color(xelaColor: .Green2), Color(xelaColor: .Purple3)]),
        XelaDoughnutChartDataset(label: "Illustrations", data: [25, 24, 10], fillColors: [Color(xelaColor: .Green2), Color(xelaColor: .Purple3), Color(xelaColor: .Orange3)]),
    ], total: 100)

    @StateObject var doughnut3Datasets = XelaDoughnutDatasets(datasets: [
        XelaDoughnutChartDataset(label: "UI/UX Design", data: [40, 20, 30], fillColors: [Color(xelaColor: .Green2), Color(xelaColor: .Purple3), Color(xelaColor: .Orange3)]),
    ], total: 100)

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Charts")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)

            ScrollView {
                HStack(spacing: 0) {
                    VStack(alignment: .center, spacing: 16) {
                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Usage Example")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack(alignment: .leading, spacing: 24) {
                                Text("Top enquiries")
                                    .xelaHeadline()
                                HStack {
                                    XelaChart(type: .Doughnut, datasetsDoughnutChart: doughnutDatasets)
                                        .frame(width: 150, height: 150)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 16) {
                                        ForEach(doughnutDatasets.datasets, id: \.self) { dataset in
                                            HStack(spacing: 8) {
                                                dataset.fillColors[0]
                                                    .frame(width: 12, height: 12)
                                                    .cornerRadius(4)

                                                Text(dataset.label)
                                                    .xelaButtonSmall()
                                                    .foregroundColor(Color(xelaColor: .Gray3))
                                            }
                                        }
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)

                            VStack(alignment: .leading, spacing: 24) {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Daily Visitors")
                                        .xelaHeadline()
                                        .foregroundColor(Color(xelaColor: .Gray2))
                                    Text("Today vs Yesterday")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray5))
                                }

                                XelaChart(type: .Line, labels: ["08:00", "10:00", "12:00", "14:00", "16:00"], datasetsLineChart: datasets, labelsColor: Color(xelaColor: .Gray8), labelsFormat: "%.0f", afterLabel: "k")
                                    .frame(height: 300)
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)
                        }

                        Group {
                            VStack(spacing: 14) {
                                HStack {
                                    Spacer()
                                    Text("Line Charts")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray4))
                                    Spacer()
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            .padding(.vertical, 8)

                            Group {
                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets1, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets2, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets3, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets4, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets5, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets6, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)
                            }

                            Group {
                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets7, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets8, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets9, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets10, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Line, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsLineChart: datasets11, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)
                            }
                        }

                        Group {
                            VStack(spacing: 14) {
                                HStack {
                                    Spacer()
                                    Text("Bar Charts")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray4))
                                    Spacer()
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            .padding(.vertical, 8)

                            Group {
                                XelaChart(type: .Bar, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsBarChart: bar1Datasets, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Bar, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsBarChart: bar2Datasets, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Bar, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsBarChart: bar3Datasets, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)

                                XelaChart(type: .Bar, labels: ["Label", "Label", "Label", "Label", "Label"], datasetsBarChart: bar4Datasets, labelsColor: Color(xelaColor: .Gray8), chartBorderColor: Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                                    .frame(height: 300)
                            }
                        }

                        Group {
                            VStack(spacing: 14) {
                                HStack {
                                    Spacer()
                                    Text("Pie Charts")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray4))
                                    Spacer()
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            .padding(.vertical, 8)

                            Group {
                                XelaChart(type: .Pie, datasetPieChart: pieDataset)
                                    .frame(width: 300, height: 300)

                                XelaChart(type: .Pie, datasetPieChart: pie2Dataset)
                                    .frame(width: 300, height: 300)
                                    .padding(.top, 36)
                            }
                        }

                        Group {
                            VStack(spacing: 14) {
                                HStack {
                                    Spacer()
                                    Text("Doughnut Charts")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray4))
                                    Spacer()
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            .padding(.vertical, 8)

                            Group {
                                XelaChart(type: .Doughnut, datasetsDoughnutChart: doughnut1Datasets)
                                    .frame(width: 200, height: 200)

                                XelaChart(type: .Doughnut, datasetsDoughnutChart: doughnut2Datasets)
                                    .frame(width: 200, height: 200)

                                XelaChart(type: .Doughnut, datasetsDoughnutChart: doughnut3Datasets)
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
    }
}
