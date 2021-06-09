//
//  SimpleBarIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Robert Hahn on 21/4/21.
//

import SwiftUI

struct SimpleBarIndicatorView: View {
    
    let min: Float = 0.0
    let max: Float = 1.0
    @State private var value: Float = 0.0
    @State private var barOpacity: Double = 1.0
    
    var backgroundColor: Color {
        #if os(iOS) || os(watchOS) || os(tvOS)
        return Color.gray
        #elseif os(macOS)
        return Color(NSColor.controlBackgroundColor)
        #endif
    }
    
    var barColor: Color {
        #if os(iOS) || os(watchOS) || os(tvOS)
        return Color.blue
        #elseif os(macOS)
        return Color(NSColor.controlAccentColor)
        #endif
    }
    
    var body: some View {
        let animation = Animation
            .easeInOut(duration: 2.0)
            .repeatForever(autoreverses: false)
        
        return GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(self.backgroundColor)
                
                Rectangle()
                    .frame(width: Swift.min(CGFloat((self.max-self.min)*self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(self.barColor)
                    .opacity(self.barOpacity)
                    .onAppear(perform: {
                        self.value = 0
                        self.barOpacity = 1.0
                        withAnimation(animation) {
                            self.value = 1
                        }
                    })
            }
            .cornerRadius(geometry.size.height / 2)
        }
    }
}
