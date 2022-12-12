//
//  DataTableTemplate.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct DataTableTemplate: View {
    var isDark = false

    var tabs: [XelaTabsItem] = [
        XelaTabsItem(id: 1, label: "All orders", badgeText: "88"),
        XelaTabsItem(id: 2, label: "Pickups", badgeText: "61"),
        XelaTabsItem(id: 3, label: "Returns", badgeText: "27"),
    ]

    @State var selectedTabId: Int = 1

    var allOrders: [Order] = [
        Order(id: "998-5878", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Mar 13, 2021 08:05 AM", delivery_status: .Received),
        Order(id: "623-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "395-9823", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
        Order(id: "998-5867", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Jun 13, 2021 08:05 AM ", delivery_status: .Received),
        Order(id: "523-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "335-9423", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
        Order(id: "118-5867", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Jun 13, 2021 08:05 AM ", delivery_status: .Received),
        Order(id: "673-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "785-9423", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
    ]

    var pickupsOrders: [Order] = [
        Order(id: "623-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "395-9823", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
        Order(id: "998-5867", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Jun 13, 2021 08:05 AM ", delivery_status: .Received),
        Order(id: "523-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "335-9423", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
        Order(id: "118-5867", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Jun 13, 2021 08:05 AM ", delivery_status: .Received),
    ]

    var returnsOrders: [Order] = [
        Order(id: "395-9823", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
        Order(id: "998-5867", customer: "Oludayo Ayomide", product: "DJI Mavic Pro 2", status: .Rejected, price: "$17.84", date: "Jun 13, 2021 08:05 AM ", delivery_status: .Received),
        Order(id: "523-4534", customer: "Edwin Martins", product: "Macbook Pro 16 inch (2021)", status: .Completed, price: "$6.48", date: "Sep 4, 2021 12:14 AM", delivery_status: .Received),
        Order(id: "335-9423", customer: "Hellen Jummy", product: "Lego Star'War edition", status: .Pending, price: "$11.70", date: "Jan 11, 2021 01:49 PM", delivery_status: .Draft),
    ]

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {}) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.white))
                }
                Spacer()
                HStack(spacing: 8) {
                    Image("basket-2")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color(.white))
                    Text("Orders")
                        .xelaButtonLarge()
                        .foregroundColor(Color(.white))
                }
                Spacer()
                XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: isDark ? .Blue5 : .Blue4))

            HStack(spacing: 8) {
                XelaButton(text: "Sort", leftIcon: "sort-up", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), autoResize: false)
                XelaButton(text: "Filters", leftIcon: "av-2", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), autoResize: false)
                XelaButton(leftIcon: "search-textfield", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), autoResize: true)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))

            XelaTabs(items: tabs, selectedId: $selectedTabId, primaryColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), secondaryColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray3), badgeBackground: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray8), badgeTextColor: Color(.white), badgeBackgroundSelected: isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3), bottomLineColor: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))

            ScrollView {
                VStack(spacing: 0) {
                    if selectedTabId == 1 {
                        ForEach(allOrders) { order in
                            orderView(order: order)
                        }
                    } else if selectedTabId == 2 {
                        ForEach(pickupsOrders) { order in
                            orderView(order: order)
                        }
                    } else {
                        ForEach(returnsOrders) { order in
                            orderView(order: order)
                        }
                    }
                }
            }
            .padding(.top, 8)
        }
        .edgesIgnoringSafeArea(.all)
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }

    @ViewBuilder
    func orderView(order: Order) -> some View {
        VStack(spacing: 16) {
            VStack(spacing: 16) {
                HStack {
                    Text("Order ID No.")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.id)
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray7))
                }
                HStack {
                    Text("Customer")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.customer)
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                HStack {
                    Text("Product")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.product)
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                HStack {
                    Text("Status")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.status.rawValue)
                        .xelaCaption()
                        .foregroundColor(order.status == .Rejected ? (isDark ? Color(xelaColor: .Red1) : Color(xelaColor: .Red3)) : order.status == .Completed ? (isDark ? Color(xelaColor: .Green1) : Color(xelaColor: .Green1)) : (isDark ? Color(xelaColor: .Orange1) : Color(xelaColor: .Orange3)))
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .background(order.status == .Rejected ? (isDark ? Color(xelaColor: .Red7) : Color(xelaColor: .Red11)) : order.status == .Completed ? (isDark ? Color(xelaColor: .Green8) : Color(xelaColor: .Green11)) : (isDark ? Color(xelaColor: .Orange8) : Color(xelaColor: .Orange11)))
                        .cornerRadius(10)
                }
                HStack {
                    Text("Price")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.price)
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                HStack {
                    Text("Created date")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()

                    Text(order.date)
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray7))
                }
                HStack {
                    Text("Delivery status")
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                    Spacer()
                    Text(order.delivery_status.rawValue)
                        .xelaCaption()
                        .foregroundColor(order.delivery_status == .Draft ? isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6) : Color(xelaColor: .Blue6))
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                .padding(.top, 8)
        }
    }
}

struct Order: Identifiable {
    var id: String
    var customer: String
    var product: String
    var status: OrderStatus
    var price: String
    var date: String
    var delivery_status: DeliveryStatus
}

enum OrderStatus: String {
    case Pending, Rejected, Completed
}

enum DeliveryStatus: String {
    case Received, Draft
}
