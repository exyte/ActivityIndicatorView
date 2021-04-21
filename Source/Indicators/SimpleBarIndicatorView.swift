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
    
    var body: some View {
        let animation = Animation
            .easeInOut(duration: 2.0)
            .repeatForever(autoreverses: false)
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(NSColor.controlBackgroundColor))
                
                Rectangle()
                    .frame(width: Swift.min(CGFloat((max-min)*value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(NSColor.controlAccentColor))
                    .opacity(self.barOpacity)
                    .onAppear(perform: {
                        self.value = 0
                        self.barOpacity = 1.0
                        withAnimation(animation) {
                            self.value = 1
//                            self.barOpacity = 0
                        }
                    })
            }
            .cornerRadius(geometry.size.height / 2)
        }
    }
}
