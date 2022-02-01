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

extension TimeInterval{
    func getDateOnly(fromTimeStamp timestamp: TimeInterval) -> String {
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.timeZone = TimeZone.current
        dayTimePeriodFormatter.dateFormat = "MMM dd, yyyy"
        return dayTimePeriodFormatter.string(from: Date(timeIntervalSince1970: timestamp))
    }
}



// MARK: Extension for half modal view
extension View{
    
    // Binding Show Variable...
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>,@ViewBuilder sheetView: @escaping ()->SheetView,onEnd: @escaping ()->())->some View{
        
        // why we using overlay or background...
        // bcz it will automatically use the swiftui frame Size only....
        return self
            .background(
                HalfSheetHelper(sheetView: sheetView(),showSheet: showSheet, onEnd: onEnd)
            )
            .onChange(of: showSheet.wrappedValue) { newValue in
                if !newValue{
                    onEnd()
                }
            }
    }
}

// UIKit Integration...
struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable{
    
    var sheetView: SheetView
    @Binding var showSheet: Bool
    var onEnd: ()->()
    
    let controller = UIViewController()
    
    func makeCoordinator() -> Coordinator {
        
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
    
        controller.view.backgroundColor = .clear
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
     
        if showSheet{
            
            if uiViewController.presentedViewController == nil{
                
                // presenting Modal View....
                
                let sheetController = CustomHostingController(rootView: sheetView)
                sheetController.presentationController?.delegate = context.coordinator
                uiViewController.present(sheetController, animated: true)
            }
        }
        else{
            // closing view when showSheet toggled again...
            if uiViewController.presentedViewController != nil{
                uiViewController.dismiss(animated: true)
            }
        }
    }
    
    // On Dismiss...
    class Coordinator: NSObject,UISheetPresentationControllerDelegate{
        
        var parent: HalfSheetHelper
        
        init(parent: HalfSheetHelper) {
            self.parent = parent
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            parent.showSheet = false
        }
    }
}

// Custom UIHostingController for halfSheet....
class CustomHostingController<Content: View>: UIHostingController<Content>{
    
    override func viewDidLoad() {
                
        // setting presentation controller properties...
        if let presentationController = presentationController as? UISheetPresentationController{
            
            presentationController.detents = [
            
                .medium(),
                .large()
            ]
            
            // to show grab protion...
            presentationController.prefersGrabberVisible = true
        }
    }
}

