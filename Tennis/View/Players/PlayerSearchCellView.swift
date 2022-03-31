//
//  PlayerSearchCellView.swift
//  Tennis
//
//  Created by Pranav Suri on 30/3/22.
//

import SwiftUI
import CachedAsyncImage

struct PlayerSearchCellView: View {
    let imageUrl: URL
    let hit: Hit
    var body: some View {
        HStack(spacing: 8){
            CachedAsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: getRect().width*0.15, height: getRect().width*0.15)
                    .clipShape(Circle())
            } placeholder: {
                ZStack{
                    Circle()
                        .frame(width: getRect().width*0.15, height: getRect().width*0.15)
                        .foregroundColor(.white.opacity(0.1))
                    ProgressView()

                }
            }
            VStack{
                Text("\(hit.firstName) \(hit.lastName)")
                    .font(.title2)
            }
            Spacer()
            VStack{
                Image(systemName: "arrow.right")
                    .foregroundColor(Color("green"))
                    .font(.title3)
            }
        }
        .padding(8)
        .background(Color(.white).opacity(0.1))
        .cornerRadius(6)
    }
}

