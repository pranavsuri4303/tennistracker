//
//  Helpers.swift
//  Tennis
//
//  Created by Pranav Suri on 07/02/2021.
//

import UIKit
import SwiftUI
extension UIImage {
  func resizeImage(targetSize: CGSize) -> UIImage {
    let size = self.size
    let widthRatio  = targetSize.width  / size.width
    let heightRatio = targetSize.height / size.height
    let newSize = widthRatio > heightRatio ?  CGSize(width: size.width * heightRatio, height: size.height * heightRatio) : CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
    let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    self.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return newImage!
  }
}

extension AnyTransition{
    static let sliderMenueTransition : AnyTransition = AnyTransition.modifier(active: SliderMenuTransition.init(xOffset: -UIScreen.main.bounds.width * 4, backgroundAlpha: 0), identity: SliderMenuTransition.init(xOffset: 0, backgroundAlpha: 0.2))
}
