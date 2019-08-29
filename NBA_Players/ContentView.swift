//
//  ContentView.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("gs").resizable().frame(height:250)
            
            Image("steph")
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15).offset(x: 0, y: -30)
            
            Text("Steph Currey")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
