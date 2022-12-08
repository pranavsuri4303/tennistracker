//
//  TextExtensions.swift
//  
//
//  Created by Pranav Suri on 31.07.2021.
//

import SwiftUI

extension Text {
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 60` and `bold`
     */
    func KymaTitle1() -> Text {
        self
            .font(.system(size: 60))
            .bold()
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 48` and `bold`
     */
    func KymaTitle2() -> Text {
        self
            .font(.system(size: 48))
            .bold()
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 34` and `black`
     */
    func KymaTitle3() -> Text {
        self
            .font(.system(size: 34))
            .fontWeight(.black)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 24` and `bold`
     */
    func KymaHeadline() -> Text {
        self
            .font(.system(size: 24))
            .fontWeight(.bold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 18` and `bold`
     */
    func KymaSubheadline() -> Text {
        self
            .font(.system(size: 18))
            .fontWeight(.bold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 16` and `regular`
     */
    func KymaBody() -> Text {
        self
            .font(.system(size: 16))
            .fontWeight(.regular)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 16` and `semibold`
     */
    func KymaBodyBold() -> Text {
        self
            .font(.system(size: 16))
            .fontWeight(.semibold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 14` and `regular`
     */
    func KymaSmallBody() -> Text {
        self
            .font(.system(size: 14))
            .fontWeight(.regular)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 14` and `bold`
     */
    func KymaSmallBodyBold() -> Text {
        self
            .font(.system(size: 14))
            .fontWeight(.bold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 12` and `semibold`
     */
    func KymaCaption() -> Text {
        self
            .font(.system(size: 12))
            .fontWeight(.semibold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 16` and `semibold`
     */
    func KymaButtonLarge() -> Text {
        self
            .font(.system(size: 16))
            .fontWeight(.semibold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 14` and `bold`
     */
    func KymaButtonMedium() -> Text {
        self
            .font(.system(size: 14))
            .fontWeight(.bold)
    }
    
    /**
     Modify the Text.

     - Returns: A new `Text` with `font size 12` and `bold`
     */
    func KymaButtonSmall() -> Text {
        self
            .font(.system(size: 12))
            .fontWeight(.bold)
    }
}
