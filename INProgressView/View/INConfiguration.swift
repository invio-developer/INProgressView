//
//  INConfiguration.swift
//  INProgressView
//
//  Created by Mustafa Yesil on 28.06.2021.
//

import SwiftUI

public struct INConfiguration {

    /// The value of the placeholder text
    var placeHolder: String
    
    /// The value of the progress line width
    var lineWidth: CGFloat
    
    /// The value of the progress gradient color
    var gradientColor: [Color]
    
    /// The value of the place holder font
    var font: Font
    
    /// The value of the place holder font color
    var fontColor: Color
    
    /// The value of the container corner radius
    var containerCornerRadius: CGFloat
    
    /// The value of the container background color
    var containerBackgroundColor: Color
    
    /// The value of the animation duration
    var linearDuration: Double
    
    public init(placeHolder: String = "Fetching...",
                lineWidth: CGFloat = 3,
                gradientColor: [Color] = [Color.primary.opacity(0), Color.primary],
                font: Font = .custom("Avenir-Heavy", size: 14),
                fontColor: Color = .blue,
                containerCornerRadius: CGFloat = 15,
                containerBackgroundColor: Color = Color.white,
                linearDuration: Double = 1.0) {
        self.placeHolder = placeHolder
        self.lineWidth = lineWidth
        self.gradientColor = gradientColor
        self.font = font
        self.fontColor = fontColor
        self.containerCornerRadius = containerCornerRadius
        self.containerBackgroundColor = containerBackgroundColor
        self.linearDuration = linearDuration
    }
    
}
