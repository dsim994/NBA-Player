//
//  StatText.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct StatText: View {
    var body: some View {
        HStack {
            
            Text("Age:")
                .font(.system(size: 45))
                .fontWeight(.bold).padding(.leading, 30)
            Text("31")
                .font(.system(size: 45))
                .fontWeight(.light)
                .padding(.trailing, 30)
            Spacer()
        
            
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText()
    }
}
