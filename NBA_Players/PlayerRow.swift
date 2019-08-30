//
//  PlayerRow.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        
        HStack {
            
            Image(player.imageName).resizable()
                .scaledToFit()
//                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(player.team.color)
                
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .offset(x: 15, y: 0).padding(.trailing, 15)

            Text(player.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}


