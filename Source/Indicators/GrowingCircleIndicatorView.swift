//
//  GrowingCircleIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Daniil Manin on 10/7/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct GrowingCircleIndicatorView: View {

    @State private var scale: CGFloat = 0
    @State private var opacity: Double = 0

    var body: some View {
        let animation = Animation
            .easeIn(duration: 1.1)
            .repeatForever(autoreverses: false)

        return Circle()
            .scaleEffect(scale)
            .opacity(opacity)
            .onAppear {
                self.scale = 0
                self.opacity = 1
                withAnimation(animation) {
                    self.scale = 1
                    self.opacity = 0
                }
            }
    }
}
