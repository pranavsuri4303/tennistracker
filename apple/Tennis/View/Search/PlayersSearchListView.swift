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
                Button {
                    print("Button pressed")
                } label: {
                    PlayerSearchCell()
                }
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
                PlayerSearchCell()
            }
        }
        .padding(.horizontal, 24)
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
                Text("Male • 🇮🇳 IND")
                    .xelaBody()
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(asset: Icons.right)
        }
        
    }
}
