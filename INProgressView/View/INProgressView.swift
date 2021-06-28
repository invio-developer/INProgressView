//
//  INProgressView.swift
//  INProgressView
//
//  Created by Mustafa Yesil on 26.06.2021.
//

import SwiftUI

public struct INProgressView: View {
    
    /// Binding switch show-hide
    @Binding public var show: Bool
    
    // MARK: UI Configuration
    public var configuration: INConfiguration
 
    // MARK: Initialization
    @State private var animate = false
    
    public init(show: Binding<Bool>, configuration:INConfiguration = INConfiguration()) {
        self._show = show
        self.configuration = configuration
    }
    
    public var body: some View {
        VStack(spacing: 28) {
            Circle()
                // For dark mode adoption
                .stroke(AngularGradient(gradient: .init(colors: configuration.spinnerGradientColor), center: .center), style: .init(lineWidth: configuration.spinnerThickness))
                .frame(width: 80, height: 80)
                // Animation
                .rotationEffect(.init(degrees: animate ? 360 : 0))
            
            Text(configuration.text)
                .font(configuration.font)
                .foregroundColor(configuration.textColor)
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 40)
        .background(INBlurView())
        .cornerRadius(configuration.containerCornerRadius)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.35))
        .onAppear {
            // Starting animation
            withAnimation(Animation.linear(duration: configuration.rotationSpeed).repeatForever(autoreverses: false)) {
                animate.toggle()
            }
        }
    }
    
}
