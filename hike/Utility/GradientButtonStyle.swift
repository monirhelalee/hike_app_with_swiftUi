//
//  GradientButtonStyle.swift
//  hike
//
//  Created by Monir Haider Helalee on 15/4/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // conditional statement with nil coalescing
                // condition ? A : B
                configuration.isPressed ?
                // A: press the button
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                        ],
                    startPoint: .top,
                    endPoint: .bottom
                ):
                // B: not press the button
                
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            ).cornerRadius(40)
    }
}
