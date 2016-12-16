//
//  InfinitySushi.swift
//  sushibar
//
//  Created by mzp on 2016/10/29.
//  Copyright © 2016 mzp. All rights reserved.
//

import Foundation
import AppKit

class SushiLaneController7 : NSViewController {
    let lane7 = NSView()

    override func loadView() {
        self.view = NSView()
    }

    override func viewDidAppear() {
        lane7.frame = CGRect(x: 1, y: 0, width: self.view.frame.width*2, height: self.view.frame.height)
        lane7.layer?.position = CGPoint(x: 0, y: 0)

        self.view.addSubview(lane7)

        for x in 0...18 {
            lane7.addSubview(makeSushi(x: x * 100))
        }
    

        start()
        
    }

    func makeSushi(x : Int) -> NSView {
        let unicorn = NSTextView(frame: NSRect(x: x, y: 0, width: 150, height: 20))
        unicorn.string = "🐼+🍣+🍻= "
        unicorn.drawsBackground = false
        unicorn.isEditable = true
        unicorn.isSelectable = true
        unicorn.font = NSFont.systemFont(ofSize: 14)
        return unicorn
    }
    
  
    
    
    func start() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.repeatCount = .infinity
        animation.duration = 8
        animation.fromValue = lane7.layer?.position
        animation.toValue = NSValue(point: NSPoint(x: -self.view.frame.width, y: 0))
        lane7.layer?.add(animation, forKey: "position")
    }
    
}
