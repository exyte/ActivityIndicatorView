//
//  ActivityIndicatorView.swift
//  ActivityIndicatorView
//
//  Created by Alisa Mylnikova on 20/03/2020.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

public struct ActivityIndicatorView: View {

    public enum IndicatorType {
        case `default`
        case arcs
        case rotatingDots
        case flickeringDots
        case scalingDots
        case opacityDots
        case equalizer
        case growingArc(Color = .red)
        case growingCircle
        case gradient([Color], CGLineCap = .butt)
    }

    @Binding var isVisible: Bool
    var type: IndicatorType

    public init(isVisible: Binding<Bool>, type: IndicatorType) {
        self._isVisible = isVisible
        self.type = type
    }

    public var body: some View {
        guard isVisible else { return AnyView(EmptyView()) }
        switch type {
        case .default:
            return AnyView(DefaultIndicatorView())
        case .arcs:
            return AnyView(ArcsIndicatorView())
        case .rotatingDots:
            return AnyView(RotatingDotsIndicatorView())
        case .flickeringDots:
            return AnyView(FlickeringDotsIndicatorView())
        case .scalingDots:
            return AnyView(ScalingDotsIndicatorView())
        case .opacityDots:
            return AnyView(OpacityDotsIndicatorView())
        case .equalizer:
            return AnyView(EqualizerIndicatorView())
        case .growingArc(let color):
            return AnyView(GrowingArcIndicatorView(color: color))
        case .growingCircle:
            return AnyView(GrowingCircleIndicatorView())
        case .gradient(let colors, let lineCap):
            return AnyView(GradientIndicatorView(colors: colors, lineCap: lineCap))
        }
    }
}
