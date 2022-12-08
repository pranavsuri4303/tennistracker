//
//  KymaRoundedCorner.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import UIKit
import SwiftUI
struct KymaRoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
