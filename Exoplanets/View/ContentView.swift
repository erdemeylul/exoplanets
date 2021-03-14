//
//  ContentView.swift
//  Exoplanets
//
//  Created by Erdem Senol on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var visible = true
    @State private var page = 0

    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 60){
                    
                    if page == 1{
                        Text("How do we name them?")
                            .bold()
                            .shadow(color: .orange, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 4)
                            .font(.system(size: 40))
                            .foregroundColor(Color(.orange))
                            .multilineTextAlignment(.center)
                            .transition(.move(edge: .trailing))
                            .animation(Animation.easeOut(duration: 1.1))
                    }
                    if page == 1{
                        NavigationLink(destination:ListView(planet: planetData[0])) {LottieView(name:"planet")
                                .frame(width: 400, height: 400)}
                            .transition(AnyTransition.move(edge: .top))
                            .animation(Animation.easeOut(duration: 1.1))
                    }
                    
                    if page == 1{
                        VStack(spacing: 60) {
                            Capsule()
                                .fill(Color(.orange))
                                .frame(height: 100)
                                .offset(x: -50, y: -80)
                                .animation(Animation.easeOut(duration: 1))
                                .overlay(Text("Discover!").bold().font(.system(size:40))
                                            .shadow(color: .black, radius: 2, x: 2, y: 2)
                                            .offset(y: -75))
                                .foregroundColor(Color(.black))
                                .animation(Animation.easeOut(duration: 1.2))
                                .shadow(color: .orange, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        }.transition(.move(edge: .leading))
                    }
                    
                    if page == 2{
                        NavigationLink(destination:ListView(planet: planetData[0])) {LottieView(name:"planet2")
                            .frame(width: 300, height: 300)}
                            .transition(AnyTransition.move(edge: .top))
                            .animation(Animation.easeOut(duration: 0.6))
                    }
                    if page == 2{
                        VStack {
                            Capsule()
                                .fill(Color("3"))
                                .frame(height: 100)
                                .offset(x: 50, y: -80)
                                .animation(Animation.easeOut(duration: 1))
                                .overlay(Text("Extreme Planets").bold().font(.system(size:36))
                                            .shadow(color: .black, radius: 2, x: 2, y: 2)
                                            .offset(y: -75))
                                .foregroundColor(Color(.orange))
                                .animation(Animation.easeOut(duration: 1.2))
                                .shadow(color: .blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        }.transition(.move(edge: .trailing))
                    }
                }

                VStack{
                   
                    if page == 0 {
                        NavigationLink(destination:FullListView(planets: planetData)) {LottieView(name:"orbitplanet")
                                .frame(width: 400, height: 400)}
                                .transition(AnyTransition.move(edge: .top))
                                .animation(Animation.easeOut(duration: 1.1))
                                .padding(.top, -80)
                                
                    }
                    if page == 0 {
                        Text("Don't miss the details!")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 34, design: .serif))
                            .foregroundColor(.white)
                            .shadow(color: .orange, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 300, height: 120)
                            .background(Color.purple.opacity(0.45))
                            .shadow(color: .pink, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
                            .cornerRadius(10)
                            .transition(AnyTransition.move(edge: .trailing))
                            .animation(Animation.easeOut(duration: 0.9))
                    }
                    if page == 0 {
                        Button(action: {page = 1}, label: {
                            Image(systemName: "chevron.right.circle.fill")
                                .foregroundColor(.purple)
                        })
                        .font(.system(size: 50))
                        .offset(y: 155)
                        .transition(AnyTransition.move(edge: .trailing))
                        .animation(Animation.easeOut(duration: 0.6))
                    }
                    
                }
                
                
                
                
                VStack {
                    Spacer()
                    HStack(spacing: 55){
                        
                        if page == 1 {
                            Button(action: {page = 0}, label: {
                                Image(systemName: "chevron.left.circle.fill")
                                    .foregroundColor(.orange)
                            }).transition(AnyTransition.move(edge: .trailing).combined(with: .opacity))
                        }
                        
                        if page == 1 {
                            Button(action: {page = 2}, label: {
                                Image(systemName: "chevron.right.circle.fill")
                                    .rotationEffect(.degrees(page == 2 ? 180 : 0))
                                    .foregroundColor(.orange)
                            }).transition(AnyTransition.move(edge: .trailing))
                        }
                        
                        if page == 2 {
                            Button(action: {page = 1}, label: {
                                Image(systemName: "chevron.left.circle.fill")
                                    .foregroundColor(.blue)
                            }).transition(AnyTransition.move(edge: .trailing))
                        }
                        
                    }.font(.system(size: 50))
                    .animation(Animation.easeIn(duration: 0.7))
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
