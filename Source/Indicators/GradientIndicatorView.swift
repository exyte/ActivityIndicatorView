//
//  GradientIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Daniil Manin on 10/7/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct GradientIndicatorView: View {

    let colors: [Color]
    let lineCap: CGLineCap

    @State private var rotation: Double = 0

    var body: some View {
        let gradientColors = Gradient(colors: colors)
        let conic = AngularGradient(gradient: gradientColors, center: .center, startAngle: .zero, endAngle: .degrees(360))
        let lineWidth: CGFloat = 4

        let animation = Animation
            .linear(duration: 1.5)
            .repeatForever(autoreverses: false)

        return ZStack {
            Circle()
                .stroke(colors.first ?? .white, lineWidth: lineWidth)

            Circle()
                .trim(from: lineWidth / 500, to: 1 - lineWidth / 100)
                .stroke(conic, style: StrokeStyle(lineWidth: lineWidth, lineCap: lineCap))
                .rotationEffect(.degrees(rotation))
                .onAppear {
                    self.rotation = 0
                    withAnimation(animation) {
                        self.rotation = 360
                    }
                }
        }
    }
}
