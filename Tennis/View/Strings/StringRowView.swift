//
//  StringRowView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/22.
//

import SwiftUI


struct StringRowView: View {
    @Binding var stringName: String
    @Binding var mainsTension: Int
    @Binding var crossTension: Int
    @Binding var dateStrung: String
    var body: some View{
        VStack{
            HStack{
                Text("\(stringName)")
                Spacer()
                Text("\(dateStrung)")
            }
            HStack{
                VStack{
                    Text("\(mainsTension)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("green"))
                    Text("Mains")
                }
                Spacer()
                VStack{
                    Text("\(crossTension)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("green"))
                    Text("Cross")
                }
            }

        }
    }
    
}

