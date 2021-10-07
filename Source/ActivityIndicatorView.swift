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
        if isVisible {
            indicator
        } else {
            EmptyView()
        }
    }
    
    // MARK: - Private
    
    private var indicator: some View {
        ZStack {
            switch type {
            case .default:
                DefaultIndicatorView()
            case .arcs:
                ArcsIndicatorView()
            case .rotatingDots:
                RotatingDotsIndicatorView()
            case .flickeringDots:
                FlickeringDotsIndicatorView()
            case .scalingDots:
                ScalingDotsIndicatorView()
            case .opacityDots:
                OpacityDotsIndicatorView()
            case .equalizer:
                EqualizerIndicatorView()
            case .growingArc(let color):
                GrowingArcIndicatorView(color: color)
            case .growingCircle:
                GrowingCircleIndicatorView()
            case .gradient(let colors, let lineCap):
                GradientIndicatorView(colors: colors, lineCap: lineCap)
            }
        }
    }
}
