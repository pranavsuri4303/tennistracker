//
//  Helpers.swift
//  Tennis
//
//  Created by Pranav Suri on 07/02/2021.
//

import Firebase
import FirebaseAuth
import SwiftUI
import UIKit

extension UIImage {
    func resizeImage(targetSize: CGSize) -> UIImage {
        let size = size
        let widthRatio = targetSize.width / size.width
        let heightRatio = targetSize.height / size.height
        let newSize = widthRatio > heightRatio ? CGSize(width: size.width * heightRatio, height: size.height * heightRatio) : CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}

extension TimeInterval {
    func getDateOnly(fromTimeStamp timestamp: TimeInterval) -> String {
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.timeZone = TimeZone.current
        dayTimePeriodFormatter.dateFormat = "MMM dd, yyyy"
        return dayTimePeriodFormatter.string(from: Date(timeIntervalSince1970: timestamp))
    }
}

// MARK: Extension for half modal view

extension View {
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheetView: @escaping () -> SheetView, onEnd: @escaping () -> Void) -> some View {
        background(
            HalfSheetHelper(sheetView: sheetView(), showSheet: showSheet, onEnd: onEnd)
        )
        .onChange(of: showSheet.wrappedValue) { newValue in
            if !newValue {
                onEnd()
            }
        }
    }
}

struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable {
    var sheetView: SheetView
    let controller = UIViewController()
    @Binding var showSheet: Bool
    var onEnd: () -> Void

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context _: Context) -> UIViewController {
        controller.view.backgroundColor = .clear
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        let presenting = uiViewController.presentedViewController != nil
        if showSheet, !presenting {
            let sheetController = CustomHostingController(rootView: sheetView)
            sheetController.presentationController?.delegate = context.coordinator
            uiViewController.present(sheetController, animated: true)
        } else if !showSheet, presenting {
//            uiViewController.dismiss(animated: true)
        }
    }

    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        var parent: HalfSheetHelper
        init(parent: HalfSheetHelper) {
            self.parent = parent
        }

        func presentationControllerDidDismiss(_: UIPresentationController) {
            parent.showSheet = false
            parent.onEnd()
        }
    }
}

class CustomHostingController<Content: View>: UIHostingController<Content> {
    override func viewDidLoad() {
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .medium(),
                .large(),
            ]

            presentationController.prefersGrabberVisible = true
        }
    }
}

struct TransparentGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white.opacity(0.12)))
    }
}

extension Binding {
    func toUnwrapped<T>(defaultValue: T) -> Binding<T> where Value == T? {
        Binding<T>(get: { self.wrappedValue ?? defaultValue }, set: { self.wrappedValue = $0 })
    }
}

extension View {
    func getRect() -> CGRect {
        UIScreen.main.bounds
    }

    func safeArea() -> UIEdgeInsets {
        let null = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return null
        }

        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return null
        }

        return safeArea
    }
}
