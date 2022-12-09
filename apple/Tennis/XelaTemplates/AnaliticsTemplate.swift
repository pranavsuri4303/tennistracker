//
//  Analitics.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct AnaliticsTemplate: View {
    var isDark = false
    
    var devicesChart:XelaPieDatasets = XelaPieDatasets(dataset: XelaPieChartDataset(label: "statuses", data: [44, 24, 14, 18], fillColors: [Color(xelaColor: .Yellow5), Color(xelaColor: .Blue5), Color(xelaColor: .Red5), Color(xelaColor: .Purple5)]))
    var labels:[String] = ["Mobile", "Tablet", "Laptop", "Desktop PC"]
    var images:[String] = ["mobile", "tablet", "laptop", "screen"]
    
    @StateObject var bar3Datasets:XelaBarDatasets = XelaBarDatasets(datasets: [
        XelaBarChartDataset(label: "First Dataset", data: [12,10,10,10,26,26], fillColor: Color(xelaColor: .Blue5)),
        XelaBarChartDataset(label: "Second Dataset", data: [10,18,22,32,17,12], fillColor: Color(xelaColor: .Purple5))
    ], dataStep: 10)
    
    var labelsPageViews:[String] = ["02:00", "04:00", "06:00", "08:00", "10:00"]
    
    @StateObject var datasetsPageViews = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "Unique page views", data: [750, 2100, 200, 1500, 1100], borderColor: Color(xelaColor: .Green2), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5),
            XelaLineChartDataset(label: "Bounce rate", data: [600, 1000, 1600, 2000, 700], borderColor: Color(xelaColor: .Purple3), pointColor: Color.clear, fillColor: Color.clear, tension: 0.5)
        ],
        dataStep: 500,
        beginAtZero: true
    )
    
    var body: some View {
        VStack(spacing:0) {
            HStack(spacing:20) {
                
                Button(action:{}) {
                    Image("left")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(Color(.white))
                }
                
                Text("Statistics")
                    .xelaButtonLarge()
                    .foregroundColor(Color(.white))
                
                Spacer()
                
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: .Blue5))
            
            ScrollView {
                VStack(spacing:16) {
                    usersByDevicesView()
                        .padding(.top, 16)
                    visitorsView()
                    commentsView()
                    pageViewsView()
                    referralsView()
                    mostPopularPagesView()
                        .padding(.bottom, 24)
                }
            }
            
        }
        .background(isDark ? Color(.black) : Color(xelaColor: .Gray12))
    }
    
    @ViewBuilder
    func mostPopularPagesView() -> some View {
        VStack(spacing:16) {
            HStack {
                Text("Most Popular Pages")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Button(action:{}) {
                    Image("more-horizontal")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(Color(xelaColor: .Gray6))
                        .contentShape(Rectangle())
                        
                }
            }
            
            HStack {
                Text("Page")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
                Spacer()
                Text("Unique page views")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            .padding(.top, 8)
            .padding(.bottom, 8)
            
            VStack(spacing:24) {
                HStack(spacing:16) {
                    Text("1")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("/en-en/p/products")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                    Spacer()
                    Text("5948")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    Text("2")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("/en-en/p/signup")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                    Spacer()
                    Text("6025")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    Text("3")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("/en-en/p/home")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                    Spacer()
                    Text("1439")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    Text("4")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("/en-en/p/login")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                    Spacer()
                    Text("8861")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
            }
            
        }
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func referralsView() -> some View {
        VStack(spacing:16) {
            HStack {
                Text("Referrals")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Button(action:{}) {
                    Image("more-horizontal")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(Color(xelaColor: .Gray6))
                        .contentShape(Rectangle())
                        
                }
            }
            
            HStack {
                Text("Source")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
                Spacer()
                Text("Users")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            .padding(.top, 8)
            
            VStack(spacing:8) {
                HStack(spacing:16) {
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "google-t", background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                    Text("google.com")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Spacer()
                    Text("45904")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "facebook-t", background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                    Text("facebook.com")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Spacer()
                    Text("20796")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "instagram-t", background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                    Text("instagram.com")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Spacer()
                    Text("50963")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
                HStack(spacing:16) {
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "pinterest-t", background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                    Text("pinterest.com")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Spacer()
                    Text("93046")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    
                }
            }
            
        }
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func pageViewsView() -> some View {
        VStack(spacing:24) {
            HStack {
                Text("Page Views")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
            }
            
            XelaChart(type: .Line, labels: labelsPageViews, datasetsLineChart: datasetsPageViews, labelsColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8), chartBorderColor: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "")
                .frame(height:200)
            
            HStack(spacing:32) {
                HStack(spacing:8) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(xelaColor: .Green2))
                        .frame(width:12, height:12)
                    Text("Unique page views")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                
                HStack(spacing:8) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(xelaColor: .Purple3))
                        .frame(width:12, height:12)
                    Text("Bounce rate")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
            }
            
            
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func commentsView() -> some View {
        VStack(spacing:24) {
            HStack {
                Text("Comments")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Button(action:{}) {
                    Text("view all")
                        .xelaButtonSmall()
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                        
                }
            }
            
            VStack(alignment:.leading, spacing:32) {
                HStack(spacing:16) {
                    HStack(alignment:.top, spacing:16) {
                        XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"))
                        VStack(alignment:.leading, spacing:0) {
                            Text("James Friday")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                            Text("just commented on")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            Text("Analysing Potential Pro...")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("5 minutes ago")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                        }
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("more-horizontal")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width:15, height:15)
                            .foregroundColor(Color(xelaColor: .Gray6))
                            .contentShape(Rectangle())
                            
                    }
                }
                
                HStack(spacing:16) {
                    HStack(alignment:.top, spacing:16) {
                        XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-1-1"))
                        VStack(alignment:.leading, spacing:0) {
                            Text("Oludayo Ayomide")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue5))
                            Text("just commented on")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            Text("How Good Is Your Prob...")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("2 hours ago")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                        }
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("more-horizontal")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width:15, height:15)
                            .foregroundColor(Color(xelaColor: .Gray6))
                            .contentShape(Rectangle())
                            
                    }
                }
            }
            
            
            
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func visitorsView() -> some View {
        VStack(spacing:24) {
            HStack {
                Text("Visitors")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Button(action:{}) {
                    Image("cog")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(Color(xelaColor: .Gray6))
                        .contentShape(Rectangle())
                        
                }
            }
            
            HStack {
                Text("254,852")
                    .xelaHeadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                VStack(alignment: .trailing, spacing:0) {
                    Text("New / Returning")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray5))
                    Text("45,762 / 2,491")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray5))
                }
            }
            
            XelaChart(type: .Bar, labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep"], datasetsBarChart: bar3Datasets, labelsColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8), chartBorderColor: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                .frame(height:160)
            
            
            
            HStack(spacing:32) {
                HStack(spacing:8) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(xelaColor: .Blue5))
                        .frame(width:12, height:12)
                    Text("New visitors")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                
                HStack(spacing:8) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(xelaColor: .Purple5))
                        .frame(width:12, height:12)
                    Text("Returning visitors")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
            }
            
            
            
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func usersByDevicesView() -> some View {
        VStack(spacing:24) {
            HStack {
                Text("Users by devices")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Button(action:{}) {
                    Image("more-horizontal")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(Color(xelaColor: .Gray6))
                        .contentShape(Rectangle())
                        
                }
            }
            
            ZStack {
                XelaChart(type:.Pie, datasetPieChart: devicesChart)
                    .frame(width:160, height:160)
                Circle()
                    .fill(isDark ? Color(xelaColor: .Gray1) : Color(.white))
                    .frame(width:96, height:96)
                VStack {
                    Text("2846")
                        .xelaSubheadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("Total")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                .frame(width:96, height:96)
                
            }
            
            VStack(alignment: .leading, spacing: 8) {
                ForEach(0...(labels.count - 1), id: \.self) { index in
                    HStack(spacing:12) {
                        VStack {
                            Image(images[index])
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height: 15)
                                .foregroundColor(Color(.white))
                                .padding(8)
                        }
                        .background(devicesChart.dataset.fillColors[index])
                        .cornerRadius(8)
                        
                        Text(labels[index])
                            .xelaCaption()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                        Spacer()
                    }
                }
                
            }
            
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
}

