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
                .stroke(AngularGradient(gradient: .init(colors: configuration.gradientColor), center: .center), style: .init(lineWidth: configuration.lineWidth))
                .frame(width: 80, height: 80)
                // Animation
                .rotationEffect(.init(degrees: animate ? 360 : 0))
            
            Text(configuration.placeHolder)
                .font(configuration.font)
                .foregroundColor(configuration.fontColor)
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 40)
        .background(BlurView())
        .background(configuration.containerBackgroundColor)
        .cornerRadius(configuration.containerCornerRadius)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture {
            withAnimation {
                // Close View
                show.toggle()
            }
        }
        .onAppear {
            // Starting animation
            withAnimation(Animation.linear(duration: configuration.linearDuration).repeatForever(autoreverses: false)) {
                animate.toggle()
            }
        }
    }
    
}
