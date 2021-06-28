//
//  INConfiguration.swift
//  INProgressView
//
//  Created by Mustafa Yesil on 28.06.2021.
//

import SwiftUI

public struct INConfiguration {

    /// The value of the loading text
    var text: String
    
    /// The value of the progress spinner thickness
    var spinnerThickness: CGFloat
    
    /// The value of the spinner gradient color
    var spinnerGradientColor: [Color]
    
    /// The value of the text font
    var font: Font
    
    /// The value of the text color
    var textColor: Color
    
    /// The value of the container corner radius
    var containerCornerRadius: CGFloat
    
    /// The value of the container background color
    var containerBackgroundColor: Color
    
    /// The value of the blur view background color
    var blurViewBackgroundColor: Color
    
    /// The value of the rotation animation duration
    var rotationAnimationDuration: Double
    
    /// The value of the enable on tap gesture for closing loading indicator
    var enableOnTapGesture: Bool
    
    
    public init(text: String = "Fetching...",
                spinnerThickness: CGFloat = 3,
                spinnerGradientColor: [Color] = [Color.primary.opacity(0), Color.primary],
                font: Font = .custom("Avenir-Heavy", size: 14),
                textColor: Color = .primary,
                containerCornerRadius: CGFloat = 15,
                containerBackgroundColor: Color = Color.white,
                rotationAnimationDuration: Double = 1.0,
                enableOnTapGesture: Bool = false,
                blurViewBackgroundColor: Color = Color.primary.opacity(0.35)) {
        self.text = text
        self.spinnerThickness = spinnerThickness
        self.spinnerGradientColor = spinnerGradientColor
        self.font = font
        self.textColor = textColor
        self.containerCornerRadius = containerCornerRadius
        self.containerBackgroundColor = containerBackgroundColor
        self.rotationAnimationDuration = rotationAnimationDuration
        self.enableOnTapGesture = enableOnTapGesture
        self.blurViewBackgroundColor = blurViewBackgroundColor
    }
    
}
