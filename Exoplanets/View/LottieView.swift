//
//  LottieView.swift
//  Exoplanets
//
//  Created by Erdem Senol on 10.03.2021.
//

import SwiftUI
import Lottie
import UIKit

struct LottieView: UIViewRepresentable{
    var name: String
    typealias UIViewType = UIView

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        
        let animationView = AnimationView()
        animationView.animation = Animation.named(name)
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore

        view.addSubview(animationView)
        
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        
    }
    
}

