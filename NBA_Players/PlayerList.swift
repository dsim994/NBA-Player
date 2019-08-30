//
//  PlayerList.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                player in
                NavigationLink(destination:PlayerView(player: player)) {
                    PlayerRow(player: player)
                }
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerList().previewDevice("iPhone XS Max").environment(\.sizeCategory, .extraLarge).previewDisplayName("XS Max Large Text")
            PlayerList().previewDevice("iPhone SE").environment(\.sizeCategory, .extraLarge).previewDisplayName("SE Large Text")
        }
    }
}
