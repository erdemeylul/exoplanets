//
//  GroupBox.swift
//  Exoplanets
//
//  Created by Erdem Senol on 11.03.2021.
//

import SwiftUI

struct GroupBoxView: View {
    var planet: Planet
    let info: [String] = ["Star","Mass(Mass of Jupiter)", "Period(days)", "Discovery Year", "Distance(ly)", "Host Star Mass(Mass of Sun)"]
    
    var body: some View {
        GroupBox() {
          DisclosureGroup("Exoplanet Details") {
            ForEach(0..<info.count, id: \.self) { item in
              Divider().padding(.vertical, 2)
              
              HStack {
                Group {
                  Image(systemName: "info.circle")
                  Text(info[item])
                }
                .foregroundColor(planet.color)
                .font(Font.system(.body).bold())
                
                Spacer(minLength: 25)
                
                Text(planet.info[item])
                  .multilineTextAlignment(.trailing)
              }
            }
          }
        }
    }
}

struct GroupBox_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxView(planet: planetData[0])
    }
}
