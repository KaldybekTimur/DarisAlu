//
//  IPhoneX7VC.swift
//
//  Created on Jul 20, 2018.
//
//  Generated by PaintCode Plugin for Sketch
//  http://www.paintcodeapp.com/sketch
//

import UIKit



class IPhoneX7VC: NSObject {
    
    
    //MARK: - Canvas Drawings
    
    /// Page 1
    
    class func drawIPhoneX7VC(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 375, height: 812), resizing: ResizingBehavior = .aspectFit) {
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        /// Resize to Target Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 375, height: 812), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 375, y: resizedFrame.height / 812)
        
        /// background
        let background = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 376, height: 818))
        context.saveGState()
        context.translateBy(x: 0, y: -6)
        context.saveGState()
        context.setAlpha(0.89)
        context.beginTransparencyLayer(in: background.bounds, auxiliaryInfo: nil)
        do {
            // Warning: Image fill is not supported.
        }
        context.endTransparencyLayer()
        context.restoreGState()
        context.restoreGState()
        
        /// iPhone X Frame
        // Warning: New symbols are not supported.
        
        /// Rectangle 10
        let rectangle10 = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 321, height: 277), cornerRadius: 42)
        context.saveGState()
        context.translateBy(x: 28, y: 243)
        UIColor.white.setFill()
        rectangle10.fill()
        context.saveGState()
        rectangle10.lineWidth = 2
        context.beginPath()
        context.addPath(rectangle10.cgPath)
        context.clip(using: .evenOdd)
        UIColor(white: 0.592, alpha: 1).setStroke()
        rectangle10.stroke()
        context.restoreGState()
        context.restoreGState()
        
        /// login
        // Warning: Image layers are not supported.
        
        /// Войти
        let layer = NSMutableAttributedString(string: "Войти")
        layer.addAttribute(.font, value: UIFont(name: "LucidaGrande", size: 30)!, range: NSRange(location: 0, length: layer.length))
        layer.addAttribute(.kern, value: 0.5, range: NSRange(location: 0, length: layer.length))
        layer.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: layer.length))
        context.saveGState()
        layer.draw(at: CGPoint(x: 143, y: 540))
        context.restoreGState()
        
        /// login
        // Warning: New symbols are not supported.
        
        /// login
        // Warning: New symbols are not supported.
        
        /// Нет аккаунта
        let layer2 = NSMutableAttributedString(string: "Нет аккаунта")
        layer2.addAttribute(.font, value: UIFont(name: "LucidaGrande", size: 20)!, range: NSRange(location: 0, length: layer2.length))
        layer2.addAttribute(.kern, value: 0.33, range: NSRange(location: 0, length: layer2.length))
        layer2.addAttribute(.foregroundColor, value: UIColor(white: 0.723, alpha: 1), range: NSRange(location: 0, length: layer2.length))
        context.saveGState()
        layer2.draw(at: CGPoint(x: 121, y: 598))
        context.restoreGState()
        
        
        context.restoreGState()
    }
    
    
    //MARK: - Canvas Images
    
    /// Page 1
    
    class func imageOfIPhoneX7VC() -> UIImage {
        struct LocalCache {
            static var image: UIImage!
        }
        if LocalCache.image != nil {
            return LocalCache.image
        }
        var image: UIImage
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 375, height: 812), false, 0)
        IPhoneX7VC.drawIPhoneX7VC()
        image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        LocalCache.image = image
        return image
    }
    
    
    //MARK: - Resizing Behavior
    
    enum ResizingBehavior {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
    
    
}
