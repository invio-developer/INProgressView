//
//  INBlurView.swift
//  INProgressView
//
//  Created by Mustafa Yesil on 26.06.2021.
//

import SwiftUI

public struct INBlurView: UIViewRepresentable {
    
    public func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
        return view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
