//
//  PlayersSearchView.swift
//  Tennis
//
//  Created by Pranav Suri on 12/1/23.
//

import SwiftUI

struct PlayersSearchListView: View {
    var body: some View {
        ScrollView{

            VStack{
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
                NavigationLink {
                    Text("Profile View")
                } label: {
                    PlayerSearchCell()
                }
            }
            .padding(.horizontal, 12)
            .padding(.top, 3)
        }
    }
}

struct PlayersSearchView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersSearchListView()
    }
}


struct PlayerSearchCell: View {
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            XelaUserAvatar(size: .Medium, style: .Circle, initials: "PS")
            VStack(alignment: .leading){
                Text("Pranav Suri")
                    .xelaBodyBold()
                    .foregroundColor(.primary)
                Text("19 • Male • 🇮🇳 IND")
                    .xelaBody()
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(asset: Icons.right)
        }
        .padding(8)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(asset: Colors.tfDefaultBorder), lineWidth: 1)
        }
        .padding(.horizontal, 4)
        
    }
    
    private func getFlag(from countryCode: String) -> String {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        return countryCode
            .unicodeScalars
            .map { 127_397 + $0.value }
            .compactMap(UnicodeScalar.init)
            .map(String.init)
            .joined()
    }
}
