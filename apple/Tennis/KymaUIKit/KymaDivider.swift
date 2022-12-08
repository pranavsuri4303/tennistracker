//
//  KymaDivider.swift
//  
//
//  Created by Pranav Suri on 07.08.2021.
//

import SwiftUI

struct KymaDivider: View {
    
    var style:KymaDividerStyle = .Solid
    var orientation:KymaDividerOrientation = .Horizontal
    var color:Color = Color(KymaColor: .Gray11)
    
    var body: some View {
        if orientation == .Horizontal {
            if style == .Dotted {
                KymaHorizontalLine()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [2, 6]))
                    .frame(height: 2)
                    .foregroundColor(color)
            }
            else if style == .Dashed {
                KymaHorizontalLine()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [8, 4]))
                    .frame(height: 1)
                    .foregroundColor(color)
            }
            else {
                KymaHorizontalLine()
                    .stroke(lineWidth: 1)
                    .frame(height: 1)
                    .foregroundColor(color)
            }
            
        }
        else {
            if style == .Dotted {
                KymaVerticalLine()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [2, 6]))
                    .frame(width: 2)
                    .foregroundColor(color)
            }
            else if style == .Dashed {
                KymaVerticalLine()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [8, 4]))
                    .frame(width: 1)
                    .foregroundColor(color)
            }
            else {
                KymaVerticalLine()
                    .stroke(lineWidth: 1)
                    .frame(width: 1)
                    .foregroundColor(color)
            }
        }
        
    }
}

struct KymaHorizontalLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct KymaVerticalLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        return path
    }
}
