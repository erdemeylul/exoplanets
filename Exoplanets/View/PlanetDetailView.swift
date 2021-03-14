//
//  PlanetDetailView.swift
//  Exoplanets
//
//  Created by Erdem Senol on 11.03.2021.
//

import SwiftUI

struct PlanetDetailView: View {
    var planet: Planet
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 20) {
            PlanetHeader(planet: planet)
            
            VStack(alignment: .leading, spacing: 20) {
              Text(planet.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.black)
              
              Text(planet.shortDescription)
                .font(.headline)
                .multilineTextAlignment(.leading)
              
              GroupBoxView(planet: planet)
              
              Text("Learn more about \(planet.title)".uppercased())
                .fontWeight(.bold)
                .foregroundColor(.black)
              
              Text(planet.longDescription)
                .multilineTextAlignment(.leading)
              
                GroupBox() {
                  HStack {
                    Text("Content source")
                    Spacer()
                    Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/List_of_proper_names_of_exoplanets")!)
                    Image(systemName: "arrow.up.right.square")
                  }
                  .font(.footnote)
                }
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: 640, alignment: .center)
          }
        } .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
            Image(systemName: "chevron.left.circle.fill")
                .foregroundColor(.white)
        }).font(.system(size: 40)))
        .edgesIgnoringSafeArea(.top)
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailView(planet: planetData[0])
    }
}
