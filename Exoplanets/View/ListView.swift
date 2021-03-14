//
//  ListView.swift
//  Exoplanets
//
//  Created by Erdem Senol on 10.03.2021.
//

import SwiftUI

struct ListView: View {
  
  var planet: Planet


  var body: some View {
    HStack {
        Image(planet.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: planet.colors), startPoint: .leading, endPoint: .topTrailing))
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(planet.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(planet.shortDescription)
          .font(.caption)
          .foregroundColor(Color.secondary)
            .lineLimit(3)
      }
    }
  }
}


struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView(planet: planetData[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
