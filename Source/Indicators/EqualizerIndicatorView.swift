//
//  EqualizerIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Daniil Manin on 10/7/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct EqualizerIndicatorView: View {

    private let count: Int = 5

    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<self.count) { index in
                EqualizerIndicatorItemView(index: index, count: self.count, size: geometry.size)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct EqualizerIndicatorItemView: View {

    let index: Int
    let count: Int
    let size: CGSize

    @State private var scale: CGFloat = 0

    var body: some View {
        let itemSize = size.width / CGFloat(count) / 2

        let animation = Animation.easeOut.delay(0.2)
            .repeatForever(autoreverses: true)
            .delay(Double(index) / Double(count) / 2)

        return RoundedRectangle(cornerRadius: 3)
            .frame(width: itemSize, height: size.height)
            .scaleEffect(x: 1, y: scale, anchor: .center)
            .onAppear {
                self.scale = 1
                withAnimation(animation) {
                    self.scale = 0.4
                }
            }
            .offset(x: 2 * itemSize * CGFloat(index) - size.width / 2 + itemSize / 2)
    }
}
