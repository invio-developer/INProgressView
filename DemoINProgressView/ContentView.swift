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
                        }
                    }
                }
            }
            if isLoading {
                INProgressView(show: $isLoading, configuration: .init(placeHolder: "Loading..", lineWidth: 1.5, gradientColor: [.white, .orange], fontColor: .orange))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
