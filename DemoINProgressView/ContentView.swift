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
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Button("Show INProgressView") {
                        withAnimation {
                            isLoading.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                isLoading.toggle()
                            }
                        }
                    }
                }
            }
            if isLoading {
                INProgressView(show: $isLoading, configuration: .init(text: "Loading.."))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
