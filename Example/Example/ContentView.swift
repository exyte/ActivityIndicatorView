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
    
    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size.width / 5
            let spacing: CGFloat = 40.0
            
            VStack {
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
