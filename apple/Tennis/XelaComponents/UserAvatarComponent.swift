//
//  UserAvatarComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct UserAvatarComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("User Avatar")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.center, spacing:16) {
                        
                        createImageUserAvatar()
                        createIconUserAvatar()
                        createInitialsUserAvatar()
                       
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(xelaColor: .Gray12))
    }
    
    @ViewBuilder
    func createImageUserAvatar() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Image")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), decoration: nil)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: nil)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), decoration: nil)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), decoration: nil)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), decoration: nil)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), decoration: nil)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), decoration: .Plus, decorationPosition: .BottomRight)
                }
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .TopRight)
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                }
                
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                }
                
                
                
            }
        }
    }
    
    @ViewBuilder
    func createInitialsUserAvatar() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Initials")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle,
                                   initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", decoration: nil, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", decoration: .Plus, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", count: 2, decoration: .Counter, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .TopRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Rectangle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Medium, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                    XelaUserAvatar(size: .Small, style: .Circle, initials: "AB", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Orange9), foreground: Color(xelaColor: .Orange3))
                }
                
                
                
            }
        }
    }
    
    @ViewBuilder
    func createIconUserAvatar() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Icon")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", decoration: nil)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", decoration: nil)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", decoration: nil)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", decoration: nil)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", decoration: nil)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", decoration: nil)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", decoration: .Plus, decorationPosition: .BottomRight)
                }
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .TopRight)
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", count: 2, decoration: .Counter, decorationPosition: .BottomRight)
                }
                
                
                
            }
        }
        
        Group {
            HStack {
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .TopRight)
                }
                
                VStack {
                    XelaUserAvatar(size: .Large, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Rectangle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                }
                VStack {
                    XelaUserAvatar(size: .Large, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                    XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", decoration: .Indicator, decorationPosition: .BottomRight)
                }
                
                
                
            }
        }
    }
}

