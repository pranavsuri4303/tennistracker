//
//  NewProfileView.swift
//  Tennis
//
//  Created by Pranav Suri on 9/1/23.
//

import SwiftUI

struct NewProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 18){
                HStack(alignment: .center){
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("Profile"))

                }
                HStack(alignment: .top){
                    VStack(alignment: .leading) {
                        HStack{
                            Text("Pranav Suri")
                                .xelaBodyBold()
                            Spacer()
                            Text("Male")
                                .xelaBody()
                                .foregroundColor(.secondary)
                        }
                        Text("Waterloo, ON")
                            .xelaBody()
                            .foregroundColor(.secondary)
                        HStack{
                            VStack{
                                Text("13")
                                    .xelaSmallBodyBold()
                                Text("Age")
                                    .xelaCaption()
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            VStack{
                                Text("3")
                                    .xelaSmallBodyBold()
                                Text("Friends")
                                    .xelaCaption()
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            VStack{
                                Text("55")
                                    .xelaSmallBodyBold()
                                Text("Matches")
                                    .xelaCaption()
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            VStack{
                                Text("🇮🇳 IND")
                                    .xelaSmallBodyBold()
                                Text("Country")
                                    .xelaCaption()
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal, 24)
        .padding(.vertical)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("profile settings pressed")
                } label: {
                    Image("cog")
                }
            }
        })
        .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
    }
}

struct NewProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NewProfileView()
    }
}
