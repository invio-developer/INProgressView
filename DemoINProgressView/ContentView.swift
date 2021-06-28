//
//  ContentView.swift
//  DemoINProgressView
//
//  Created by Mustafa Yesil on 26.06.2021.
//

import SwiftUI
import INProgressView

struct ContentView: View {
    
    @State var isLoading = false
    
    @State private var text: String = "Loading"
    @State private var thickness: CGFloat = 3
    @State private var containerCornerRadius: CGFloat = 15
    @State private var rotationAnimationDuration: Double = 1
    @State private var textColor: Color = .primary
    @State private var containerBackgroundColor: Color = Color.white
    @State private var blurViewBackgroundColor: Color = Color.primary.opacity(0.3)
    
    @State private var gradientFirstColor  = Color.primary.opacity(0)
    @State private var gradientSecondColor = Color.primary
    @State private var enableOnTapGesture = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    VStack(alignment: .leading, content: {
                        Text("Text")
                            .padding(.leading)
                            .padding(.trailing)
                        HStack {
                            TextField("Loading", text: $text)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(height: 50)
                                .padding(.leading)
                                .padding(.trailing)
                        }
                    })
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack {
                            Text("Spinner Thickness")
                                .padding(.leading)
                                .padding(.trailing)
                            Text("\(Int(thickness))")
                                .padding(.leading)
                                .padding(.trailing)
                        }
                        
                        Slider(value: $thickness, in: 1...10)
                            .padding(.leading)
                            .padding(.trailing)
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack {
                            Text("Container Corner Radius")
                                .padding(.leading)
                                .padding(.trailing)
                            Text("\(Int(containerCornerRadius))")
                                .padding(.leading)
                                .padding(.trailing)
                        }
                        
                        Slider(value: $containerCornerRadius, in: 0...30)
                            .padding(.leading)
                            .padding(.trailing)
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack {
                            Text("Rotation Animation Duration")
                                .padding(.leading)
                                .padding(.trailing)
                            Text("\(rotationAnimationDuration)")
                                .padding(.leading)
                                .padding(.trailing)
                        }
                        
                        Slider(value: $rotationAnimationDuration, in: 0.5...10)
                            .padding(.leading)
                            .padding(.trailing)
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        if #available(iOS 14.0, *) {
                            ColorPicker("Set the text color", selection: $textColor)
                                .padding(.leading)
                                .padding(.trailing)
                        }
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        if #available(iOS 14.0, *) {
                            ColorPicker("Set the container background color", selection: $containerBackgroundColor)
                                .padding(.leading)
                                .padding(.trailing)
                        }
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        if #available(iOS 14.0, *) {
                            ColorPicker("Set the blur view background color", selection: $blurViewBackgroundColor)
                                .padding(.leading)
                                .padding(.trailing)
                        }
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        if #available(iOS 14.0, *) {
                            HStack(alignment: .center, spacing: 10) {
                                ColorPicker("Set the first gradient color", selection: $gradientFirstColor)
                                    .padding(.leading)
                                    .padding(.trailing)
                                ColorPicker("Set the second gradient color", selection: $gradientSecondColor)
                                    .padding(.leading)
                                    .padding(.trailing)
                            }
                            
                        }
                    }).padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        Toggle("Enable background tap on the gesture", isOn: $enableOnTapGesture)
                            .padding(.leading)
                            .padding(.trailing)
                    }).padding(.top, 20)
                    
                    Button("Show INProgressView") {
                        withAnimation {
                            isLoading.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                isLoading = false
                            }
                        }
                    }.padding(.top, 40)
                }
            }
            
        }
        ZStack {
            if isLoading {
                INProgressView(show: $isLoading, configuration: .init(text: text, spinnerThickness: thickness, spinnerGradientColor: [gradientFirstColor, gradientSecondColor], textColor: textColor, containerCornerRadius: containerCornerRadius, containerBackgroundColor: containerBackgroundColor, rotationAnimationDuration: rotationAnimationDuration, enableOnTapGesture: enableOnTapGesture, blurViewBackgroundColor: blurViewBackgroundColor))
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            }
        }
        
    }
}
