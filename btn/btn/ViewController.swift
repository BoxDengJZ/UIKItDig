//
//  ViewController.swift
//  btn
//
//  Created by Jz D on 2020/6/30.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var debounceBtn: DebounceButton!
    
    
    @IBOutlet weak var flickBtn: FlickBtn!
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        debounceBtn.delayDuration = 6.0
    }

    
    
    
    
    @IBAction func debounce(_ sender: UIButton) {
        
        
        print("debounce")
        
        
    }
    
    
    
    
    
    
    @IBAction func flick(_ sender: UIButton) {
        
        
        print("flick")
        
        
        
        
    }
    
    
    

}

