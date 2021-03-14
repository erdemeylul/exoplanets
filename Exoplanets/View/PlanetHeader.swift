//
//  PlanetHeader.swift
//  Exoplanets
//
//  Created by Erdem Senol on 11.03.2021.
//

import SwiftUI

struct PlanetHeader: View {
        var planet: Planet
        
        @State private var isAnimatingImage: Bool = false


        var body: some View {
          ZStack {
            LinearGradient(gradient: Gradient(colors: planet.colors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(planet.image)
              .resizable()
              .scaledToFit()
              .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
              .padding(.vertical, 20)
              .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
          } 
          .frame(height: 440)
          .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
              isAnimatingImage = true
            }
          }
        }
}

struct PlanetHeader_Previews: PreviewProvider {
    static var previews: some View {
        PlanetHeader(planet: planetData[0])
    }
}
