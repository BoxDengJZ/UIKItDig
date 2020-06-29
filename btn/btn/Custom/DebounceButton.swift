//
//  DebounceButton.swift
//  IMDrawAnimation
//
//  Created by imwallet on 17/1/9.
//  Copyright © 2017年 imWallet. All rights reserved.
//

import UIKit



/// Button延迟点击

class DebounceButton: UIButton {

    fileprivate var isDelayEvent = false
    
    // 必须大于 0
    var delayDuration = Double(0)
    
    override func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) {
        
        if self.isKind(of: UIButton.self) {
            
            print("delayDuration value is \(delayDuration)")
            
            guard !isDelayEvent else{   return    }
            
            if delayDuration > 0 {
                isDelayEvent = true
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayDuration, execute: {
                    self.isDelayEvent = false
                })
                super.sendAction(action, to: target, for: event)
            }
            
        }
        else {
            super.sendAction(action, to: target, for: event)
        }
    }

}
