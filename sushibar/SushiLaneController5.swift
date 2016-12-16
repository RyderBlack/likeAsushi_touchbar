//
//  InfinitySushi.swift
//  sushibar
//
//  Created by mzp on 2016/10/29.
//  Copyright © 2016 mzp. All rights reserved.
//

import Foundation
import AppKit

class SushiLaneController5 : NSViewController {
    let lane5 = NSView()

    override func loadView() {
        self.view = NSView()
    }

    override func viewDidAppear() {
        lane5.frame = CGRect(x: 0, y: 0, width: self.view.frame.width*2, height: self.view.frame.height)
        lane5.layer?.position = CGPoint(x: 0, y: 0)

        self.view.addSubview(lane5)

        for x in 0...28 {
            lane5.addSubview(makeSushi(x: x * 100))
        }
    

        start()
        
    }

    func makeSushi(x : Int) -> NSView {
        let unicorn = NSTextView(frame: NSRect(x: x, y: 0, width: 50, height: 30))
        unicorn.string = "💩 💨"
        unicorn.drawsBackground = false
        unicorn.isEditable = false
        unicorn.isSelectable = false
        unicorn.font = NSFont.systemFont(ofSize: 12)
        return unicorn
    }
    
    
    func start() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.repeatCount = .infinity
        animation.duration = 8
        animation.fromValue = lane5.layer?.position
        animation.toValue = NSValue(point: NSPoint(x: -self.view.frame.width, y: 0))
        lane5.layer?.add(animation, forKey: "position")
    }
    
}
