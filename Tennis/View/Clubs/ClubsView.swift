//
//  ClubsView.swift
//  Tennis
//
//  Created by Pranav Suri on 15/7/21.
//

import SwiftUI

struct ClubsView: View {
    var body: some View {
        VStack {
            Text("Clubs")
        }.frame(width: getRect().width, height: getRect().height)
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}
