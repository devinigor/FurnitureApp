//
//  Extension+View.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
