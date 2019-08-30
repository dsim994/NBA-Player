//
//  StatText.swift
//  NBA_Players
//
//  Created by Dylan Simerly on 8/29/19.
//  Copyright © 2019 Dylan Simerly. All rights reserved.
//

import SwiftUI

struct StatText: View {
    
    var statName : String
    var statValue : String
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(.bold).padding(.leading, 30)
            Text(statValue)
                .font(.system(size: 45))
                .fontWeight(.light)
                .padding(.trailing, 30)
            Spacer()
        
            
        }.minimumScaleFactor(0.5)
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "40")
    }
}
