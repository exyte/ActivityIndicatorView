//
//  ArcsIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Daniil Manin on 10/7/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct ArcsIndicatorView: View {

    private let count: Int = 3

    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<count) { index in
                ArcsIndicatorItemView(index: index, count: count, size: geometry.size)
            }
        }
    }
}

struct ArcsIndicatorItemView: View {

    let index: Int
    let count: Int
    let size: CGSize

    @State private var rotation: Double = 0

    var body: some View {
        let animation = Animation.default
            .speed(Double.random(in: 0.2...0.5))
            .repeatForever(autoreverses: false)

        return Group { () -> Path in
            var p = Path()
            p.addArc(center: CGPoint(x: size.width / 2, y: size.height / 2),
                     radius: size.width / 2 - CGFloat(index) * CGFloat(count),
                     startAngle: .degrees(0),
                     endAngle: .degrees(Double(Int.random(in: 120...300))),
                     clockwise: true)
            return p.strokedPath(.init(lineWidth: 2))
        }
        .frame(width: size.width, height: size.height)
        .rotationEffect(.degrees(rotation))
        .onAppear {
            rotation = 0
            withAnimation(animation) {
                rotation = 360
            }
        }
    }
}
