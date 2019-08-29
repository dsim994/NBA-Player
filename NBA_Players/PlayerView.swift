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
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15).offset(x: 0, y: -30).padding(.bottom, -30)
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
            
            StatText(statName: "Age", statValue: String(player.age))
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: String(player.weight) + "lbs")
            
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[0])
    }
}
