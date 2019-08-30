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
            
            Image(player.imageName).resizable().frame(width: 50, height: 50.0).scaledToFit().background(Circle().foregroundColor(player.team.color)).clipShape(Circle())

            Text(player.name).font(.largeTitle).fontWeight(.bold).minimumScaleFactor(0.5)
        
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}


