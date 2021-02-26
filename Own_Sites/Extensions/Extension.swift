//
//  Extension.swift
//  Own_Sites
//
//  Created by Vijay Bhaskar on 26/02/21.
//

import UIKit
extension UILabel {
    var substituteFontName : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") == nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
    var substituteFontNameBold : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") != nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
}
extension UITextField {
    var substituteFontName : String {
        get { return self.font!.fontName }
        set { self.font = UIFont(name: newValue, size: (self.font?.pointSize)!) }
    }
}

extension UIFont{
    
    class func appRegularFontWith(size: CGFloat)->UIFont{
        return UIFont(name: "SFUIText-Regular", size: size)!
    }
    
    class func appMediumFontWith(size: CGFloat)-> UIFont{
        return UIFont(name: "SFUIText-Medium", size: size)!
    }
    
    class func appBoldFontWith(size:CGFloat)->UIFont{
        return UIFont(name: "SFUIText-Bold", size: size)!
    }
}


extension UIColor{
    
    class func appOrangeColor()-> UIColor{
        return UIColor(red: 255.0/255.0, green: 127.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    
    
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

