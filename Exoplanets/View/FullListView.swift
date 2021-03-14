//
//  FullListView.swift
//  Exoplanets
//
//  Created by Erdem Senol on 11.03.2021.
//

import SwiftUI

struct FullListView: View {
    
    var planets: [Planet] = planetData
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {

        List {
            ForEach(planets) { item in
              NavigationLink(destination: PlanetDetailView(planet:item)){
                ListView(planet: item)
                  .padding(.vertical, 4)
              }
            }
          }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
            Image(systemName: "chevron.left.circle.fill")
                .foregroundColor(.purple)
        }).font(.system(size: 40)))
      }
}

struct FullListView_Previews: PreviewProvider {
    static var previews: some View {
        FullListView(planets: planetData)
    }
}
