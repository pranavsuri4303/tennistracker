//
//  PlayerSearchCellView.swift
//  Tennis
//
//  Created by Pranav Suri on 30/3/22.
//

import SwiftUI
import CachedAsyncImage

struct PlayerSearchCellView: View {
    let hit: Hit
    
    var body: some View {
        HStack(spacing: 8){
            CachedAsyncImage(url: URL(string: hit.imagePath)) { image in
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
                HStack{
                    Text("\(hit.firstName) \(hit.lastName)")
                        .font(.title2)
                    Spacer()
                }
                HStack{
                    Text("\(self.getFlag(from: hit.nationality)) | \(Locale(identifier: "en_US").localizedString(forRegionCode: hit.nationality) ?? hit.nationality)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                }

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
    func getFlag(from countryCode: String) -> String {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        return countryCode
            .unicodeScalars
            .map({ 127397 + $0.value })
            .compactMap(UnicodeScalar.init)
            .map(String.init)
            .joined()
    }
}

