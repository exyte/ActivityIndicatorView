//
//  ContentView.swift
//  Example
//
//  Created by Alisa Mylnikova on 20/03/2020.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI
import ActivityIndicatorView

struct ContentView: View {

    @State private var showLoadingIndicator: Bool = true
    @State private var progressForProgressBar: CGFloat = 0.0
    private let timer = Timer.publish(every: 1 / 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        AnyView(GeometryReader { (geometry: GeometryProxy) -> AnyView in
            let size = geometry.size.width / 5
            let spacing: CGFloat = 40.0
            
            return AnyView(VStack {
                HStack {
                    Spacer()
                    VStack(spacing: spacing) {
                        Spacer()
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .default)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .arcs)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .rotatingDots)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .equalizer)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .growingArc())
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    VStack(spacing: spacing) {
                        Spacer()
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .opacityDots)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .scalingDots)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .gradient([Color.white, Color.red]))
                            .frame(width: size, height: size)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .growingCircle)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .flickeringDots)
                            .frame(width: size, height: size)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    Spacer()
                }
                
                ActivityIndicatorView(isVisible: self.$showLoadingIndicator, type: .progressBar($progressForProgressBar))
                    .frame(height: 8.0)
                    .foregroundColor(.red)
                    .padding([.bottom, .horizontal], size)
                    .onReceive(timer) { _ in
                        switch progressForProgressBar {
                        case ...0.3, 0.4...0.6:
                            progressForProgressBar += 1 / 30
                        case 0.3...0.4, 0.6...0.9:
                            progressForProgressBar += 1 / 120
                        case 0.9...0.99:
                            progressForProgressBar = 1
                        case 1.0...:
                            progressForProgressBar = 0
                        default:
                            break
                        }
                    }
                
                Spacer()
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
