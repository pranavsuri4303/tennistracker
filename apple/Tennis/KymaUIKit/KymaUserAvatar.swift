//
//  KymaUserAvatar.swift
//  
//
//  Created by Pranav Suri on 01.08.2021.
//

import SwiftUI

struct KymaUserAvatar: View {
    @State var size:KymaUserAvatarSize
    @State var style:KymaUserAvatarStyle
    
    @State var initials:String? = nil
    @State var icon:String? = nil
    @State var image:Image? = nil
    @State var count:Int = 0
    
    @State var decoration:KymaUserAvatarDecoration? = nil
    @State var decorationPosition:KymaUserAvatarDecorationPosition = .TopRight

    
    var background:Color = Color(KymaColor: .Blue7)
    var foreground:Color = Color(.white)
    
    var body: some View {
        ZStack {
            VStack {
                if icon != nil {
                    Image(icon!)
                        .resizable()
                        .frame(width:getIconSize(), height: getIconSize())
                        .foregroundColor(foreground)
                }
                else if image != nil {
                   image!
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                }
                else if initials != nil {
                    if size == .Large {
                        Text(initials!)
                            .KymaHeadline()
                            .foregroundColor(foreground)
                    }
                    else if size == .Medium {
                        Text(initials!)
                            .KymaSubheadline()
                            .foregroundColor(foreground)
                    }
                    else {
                        Text(initials!)
                            .KymaButtonMedium()
                            .foregroundColor(foreground)
                    }
                   
                }
            }
            .frame(width:getAvatarSize(), height:getAvatarSize())
            .background(background)
            .clipShape(
                RoundedRectangle(cornerRadius: style == .Circle ? 100 : getRadius(), style: style == .Circle ? .circular : .continuous)
            )
            
            
            if decoration != nil {
                drawDecoration()
            }
        }
        .frame(width:getAvatarSize(), height:getAvatarSize())
        
    }
    
    @ViewBuilder
    func drawDecoration() -> some View {
        VStack {
            if decorationPosition == .BottomRight {
                Spacer()
            }
            HStack {
                Spacer()
                if decoration == .Counter {
                    Text("\(count)")
                        .font(.system(size: size == .Large ? 10 : 8))
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                        .background(Color(KymaColor: .Red3))
                        .clipShape(Circle())
                        .offset(x:getOffsetX(), y:getOffsetY())
                }
                else if decoration == .Indicator {
                    Circle()
                        .fill(Color(KymaColor: .Green2))
                        .frame(width:getIndicatorSize(), height:getIndicatorSize())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: size == .Large ? 3 : size == .Medium ? 2 : 1)
                        )
                        .offset(x:getOffsetX(), y:getOffsetY())
                }
                else if decoration == .Plus {
                    
                    VStack {
                        Image(systemName:"plus")
                            .font(.system(size:8))
                            .foregroundColor(Color(.white))
                            .padding(size == .Large ? 5 : size == .Medium ? 4 : 3)
                    }
                    .background(Color(KymaColor: .Blue3))
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: size == .Large ? 3 : size == .Medium ? 3 : 2)
                    )
                    .offset(x:getOffsetX(), y:getOffsetY())
                }
            }
            if decorationPosition == .TopRight {
                Spacer()
            }
        }
    }
    
    func getOffsetX() -> CGFloat {
        if decoration == .Indicator {
            if decorationPosition == .BottomRight {
                if style == .Rectangle {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return -2
                    }
                    
                    return 0
                }
                else {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return -2
                    }
                    
                    return 0
                }
            }
            else {
                if style == .Rectangle {
                    if size == .Large {
                        return 0
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 4
                }
                else {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return -1
                    }
                    
                    return 0
                }
            }
        }
        else {
            if decorationPosition == .BottomRight {
                if style == .Rectangle {
                    if size == .Large {
                        return 0
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 2
                }
                else {
                    if size == .Large {
                        return 0
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 2
                }
            }
            else {
                if style == .Rectangle {
                    if size == .Large {
                        return 0
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 2
                }
                else {
                    if size == .Large {
                        return 0
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 2
                }
            }
        }
        
        
    }
    
    func getOffsetY() -> CGFloat {
        
        if decoration == .Indicator {
            if decorationPosition == .BottomRight {
                if style == .Rectangle {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return -2
                    }
                    
                    return 0
                }
                else {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return -2
                    }
                    
                    return 0
                }
            }
            else {
                if style == .Rectangle {
                    if size == .Large {
                        return 2
                    }
                    else if size == .Medium {
                        return 0
                    }
                    
                    return -4
                }
                else {
                    if size == .Large {
                        return 2
                    }
                    else if size == .Medium {
                        return 2
                    }
                    
                    return 0
                }
            }
        }
        else {
            if decorationPosition == .BottomRight {
                if style == .Rectangle {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return 0
                    }
                    
                    return 2
                }
                else {
                    if size == .Large {
                        return -2
                    }
                    else if size == .Medium {
                        return 0
                    }
                    
                    return 2
                }
            }
            else {
                if style == .Rectangle {
                    if size == .Large {
                        return 2
                    }
                    else if size == .Medium {
                        return 0
                    }
                    
                    return -2
                }
                else {
                    if size == .Large {
                        return 2
                    }
                    else if size == .Medium {
                        return 0
                    }
                    
                    return 2
                }
            }
        }
        
    }
    

    
    func getRadius() -> CGFloat {
        if size == .Large {
            return 24
        }
        else if size == .Medium {
            return 18
        }
        
        return 12
    }
    
    func getIconSize() -> CGFloat {
        if size == .Large {
            return 32
        }
        else if size == .Medium {
            return 24
        }
        
        return 16
    }
    
    func getIndicatorSize() -> CGFloat {
        if size == .Large {
            return 12
        }
        else if size == .Medium {
            return 10
        }
        
        return 8
    }
    
    func getAvatarSize() -> CGFloat {
        if size == .Large {
            return 64
        }
        else if size == .Medium {
            return 48
        }
        
        return 32
    }
}
