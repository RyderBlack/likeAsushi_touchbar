//
//  InfinitySushi.swift
//  sushibar
//
//  Created by mzp on 2016/10/29.
//  Copyright © 2016 mzp. All rights reserved.
//

import Foundation
import AppKit

class SushiLaneController3 : NSViewController {
    let lane3 = NSView()

    override func loadView() {
        self.view = NSView()
    }

    override func viewDidAppear() {
        lane3.frame = CGRect(x: 0, y: 0, width: self.view.frame.width*2, height: self.view.frame.height)
        lane3.layer?.position = CGPoint(x: 0, y: 0)

        self.view.addSubview(lane3)

        for x in 0...18 {
            lane3.addSubview(makeSushi(x: x * 100))
        }
    

        start()
        
    }


    func makeSushi(x : Int) -> NSView {
        let unicorn = NSTextView(frame: NSRect(x: x, y: 0, width: 30, height: 30))
        unicorn.string = "🐙"
        unicorn.drawsBackground = false
        unicorn.isEditable = false
        unicorn.isSelectable = false
        unicorn.font = NSFont.systemFont(ofSize: 20)
        return unicorn
    }
    
    
    func start() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.repeatCount = .infinity
        animation.duration = 8
        animation.fromValue = lane3.layer?.position
        animation.toValue = NSValue(point: NSPoint(x: -self.view.frame.width, y: 0))
        lane3.layer?.add(animation, forKey: "position")
    }
    
}
