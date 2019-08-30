//
//  PlayerView.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    
    var player : Player
    
    var body: some View {
        VStack {
            
            Image(player.team.imageName)
                .resizable()
                .frame(height:250)
            
            Image(player.imageName)
                .resizable().scaledToFit()
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .offset(x: 0, y: -25)
                .padding(.bottom, -35)
        
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
        
            StatText(statName: "Age", statValue: String(player.age))
//                .padding(.top, 35)
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: String(player.weight) + "lbs")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            PlayerView(player: players[0])
                .previewDevice("iPhone Xs Max")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("XS Max Large Text")
            
            PlayerView(player: players[0])
                .previewDevice("iPhone Xs Max")
                .environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("XS Max Small Text")
            
            PlayerView(player: players[0])
                .previewDevice("iPhone SE")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("SE Large Text")
            
            PlayerView(player: players[0])
            .previewDevice("iPhone SE")
            .environment(\.sizeCategory, .extraSmall)
            .previewDisplayName("SE Small Text")
        }
        
    }
}
