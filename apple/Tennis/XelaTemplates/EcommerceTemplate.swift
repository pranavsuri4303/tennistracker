//
//  Ecommerce.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct EcommerceTemplate: View {
    var isDark = false
    @State var showProducts = false

    @State var searchText: String = ""
    @State var searchState: XelaTextFieldState = .Default
    @State var searchHelperText: String = ""

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image("align-text-justify")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                    Text("Menu")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                Spacer()
                HStack(spacing: 24) {
                    Button(action: {}) {
                        Image("search-textfield")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                    Button(action: {}) {
                        Image("basket-t")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                }
            }
            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
            .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))

            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        XelaButton(text: "Shop by Category", leftIcon: "icon", background: Color(xelaColor: .Blue6), foregroundColor: Color(.white), autoResize: false)

                        HStack(spacing: 32) {
                            HStack(spacing: 8) {
                                Text("⚡")
                                    .xelaHeadline()
                                Text("Deals today")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            }
                            HStack(spacing: 8) {
                                Text("✨")
                                    .xelaHeadline()
                                Text("Special prices")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 24, leading: 16, bottom: 16, trailing: 16))

                    VStack(spacing: 24) {
                        VStack(spacing: 0) {
                            Text("Fire Up more table time")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Summer is sweet together")
                                .xelaBodyBold()
                                .foregroundColor(Color(xelaColor: .Gray6))
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 24)
                        ZStack(alignment: .top) {
                            if isDark {
                                Image("ecommerce-bg-dark")
                                    .resizable()
                                    // .frame(height:189)
                                    .aspectRatio(contentMode: .fill)
                                    .offset(y: 20)
                            } else {
                                Image("ecommerce-bg")
                                    .resizable()
                                    // .frame(height:189)
                                    .aspectRatio(contentMode: .fill)
                                    .offset(y: 20)
                            }

                            XelaTextField(
                                placeholder: "Search groceries...",
                                value: $searchText,
                                state: $searchState,
                                helperText: $searchHelperText,
                                leftIcon: "search-textfield",
                                background: isDark ? Color(.black) : Color(.white),
                                placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                                textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                                borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                                iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                            )
                            .padding(.horizontal, 16)
                        }
                    }
                    // .padding(EdgeInsets(top: 24, leading: 16, bottom: 16, trailing: 16))
                    .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))

                    VStack(spacing: 8) {
                        Text("Browse by Category")
                            .xelaHeadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        Button(action: {}) {
                            HStack(spacing: 8) {
                                Text("All Categories")
                                    .xelaCaption()

                                Image("right-small")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 15, height: 15)
                            }
                        }
                        .foregroundColor(Color(xelaColor: .Blue6))
                    }
                    .padding(.top, 32)

                    VStack(spacing: 16) {
                        HStack(spacing: 8) {
                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🥕")
                                            .xelaTitle3()
                                        Text("Vegetables")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍏")
                                            .xelaTitle3()
                                        Text("Fruits")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍓")
                                            .xelaTitle3()
                                        Text("Berries")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }

                        HStack(spacing: 8) {
                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍖")
                                            .xelaTitle3()
                                        Text("Meat")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍗")
                                            .xelaTitle3()
                                        Text("Chicken")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🐟")
                                            .xelaTitle3()
                                        Text("Fish")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }

                        HStack(spacing: 8) {
                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍤")
                                            .xelaTitle3()
                                        Text("Seafood")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🧀")
                                            .xelaTitle3()
                                        Text("Cheese")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Button(action: { showProducts.toggle() }) {
                                HStack {
                                    Spacer()
                                    VStack(spacing: 8) {
                                        Text("🍞")
                                            .xelaTitle3()
                                        Text("Bread")
                                            .xelaBodyBold()
                                    }
                                    .padding(.vertical, 16)
                                    Spacer()
                                }
                                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                                .cornerRadius(16)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                    }
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                }
            }
        }
        .background(isDark ? Color(.black) : Color(.white))
        .sheet(isPresented: $showProducts) {
            EcommerceProductsTemplate(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct EcommerceProductsTemplate: View {
    var isDark = false

    var products: [Product] = [
        Product(id: "1", image: "prod-1", name: "Strawberries", desc: "16 oz pkg | $0.31 / oz", price: "$4.99"),
        Product(id: "2", image: "prod-2", name: "Clementines (Mandarins)", desc: "3 lb bag | $0.12 / oz", price: "$5.99"),
        Product(id: "3", image: "prod-3", name: "Sweet Corn", desc: "1 ear | $0.41 / ea", price: "$0.41"),
        Product(id: "4", image: "prod-4", name: "Eggplant", desc: "1 ea | $2.76 / ea", price: "$2.76"),
        Product(id: "5", image: "prod-5", name: "Broccoli Organic", desc: "1 head | $3.49 / ea", price: "$3.49"),
    ]

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image("align-text-justify")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                    Text("Menu")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                Spacer()
                HStack(spacing: 24) {
                    Button(action: {}) {
                        Image("search-textfield")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                    Button(action: {}) {
                        Image("basket-t")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                }
            }
            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
            .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))

            VStack(spacing: 8) {
                Text("Popular Products")
                    .xelaHeadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Button(action: {}) {
                    HStack(spacing: 8) {
                        Text("View All")
                            .xelaCaption()

                        Image("right-small")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)
                    }
                }
                .foregroundColor(Color(xelaColor: .Blue6))
            }
            .padding(.top, 16)
            .padding(.bottom, 16)

            ScrollView(showsIndicators: false) {
                VStack(spacing: 16) {
                    ForEach(products) { product in
                        productView(product: product)
                            .padding(.horizontal, 16)
                            .padding(.bottom, products.last?.id == product.id ? 24 : 0)
                    }
                }
            }
        }
        .background(isDark ? Color(.black) : Color(.white))
    }

    @ViewBuilder
    func productView(product: Product) -> some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(isDark ? Color(xelaColor: .Gray2) : Color(.white))
                    .frame(width: 80, height: 80)

                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 96, height: 96)

            VStack(alignment: .leading, spacing: 8) {
                VStack(alignment: .leading, spacing: 0) {
                    Text(product.name)
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text(product.desc)
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray6))
                }
                HStack {
                    Text(product.price)
                        .xelaSubheadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Spacer()
                    XelaButton(leftIcon: "bag-t", size: .Small, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray2), foregroundColor: Color(.white))
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
        .cornerRadius(16)
    }
}

struct Product: Identifiable {
    var id: String
    var image: String
    var name: String
    var desc: String
    var price: String
}
