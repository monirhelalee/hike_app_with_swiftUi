//
//  CardView.swift
//  hike
//
//  Created by Monir Haider Helalee on 15/4/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEARDER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                    .customGrayLight, 
                                        .customGrayMedium
                                    ],
                                               startPoint: .top,
                                               endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button{
                            // ACTION: show a sheet
                            print("button pressed")
                        }label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack{
                    Circle().fill(
                        LinearGradient(
                            colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 256,height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - FOTTER
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
