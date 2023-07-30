//
//  StartupView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct StartupView: View {
    let color = #colorLiteral(red: 0, green: 0.9458774924, blue: 0.3689389229, alpha: 1)
    let color2 = #colorLiteral(red: 0, green: 0.5200070751, blue: 0.7028747201, alpha: 1)
    
    // animation
    private let transition: AnyTransition = .asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top))
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                colors: [
                    Color(uiColor: color),
                    Color(uiColor: color2)
                ],
                center: .topLeading,
                startRadius: 0,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            // foreground
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnBoardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct StartupView_Previews: PreviewProvider {
    static var previews: some View {
        StartupView()
    }
}
