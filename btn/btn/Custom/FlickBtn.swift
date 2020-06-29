//
//  EnergyB.swift
//  Buddha
//
//  Created by Jz D on 2020/6/21.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit

class FlickBtn: UIButton {

    let imageSide: CGFloat = 50
       
       
       override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
           let h: CGFloat = 20
           let x: CGFloat = contentRect.minX
           let y = contentRect.minY + (imageSide - h) * 0.5
           return CGRect(x: x, y: y, width: contentRect.width, height: h)
       }
       
       
       override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
           let x: CGFloat = contentRect.minX
           let y = contentRect.minY
           return CGRect(x: x, y: y, width: imageSide, height: imageSide)
       }
       
    
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let width = bounds.size.width
        let height = bounds.size.height
        let offset: CGFloat = 20
        let frame = CGRect(x: offset * (-1), y: offset * (-1), width: width + offset * 2, height: height + offset * 2)
        return frame.contains(point)
    }
    


       
       // MARK: - initializer -
       
       public override init(frame: CGRect) {
           super.init(frame: frame)
       
       }
       
       required public init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
    
       }
       


    
    override func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) {
        transform = CGAffineTransform.identity
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(scaleX: 2, y: 2)
        }) { (_) in
            self.transform = .identity
            super.sendAction(action, to: target, for: event)
        }
        
    }
    
}
