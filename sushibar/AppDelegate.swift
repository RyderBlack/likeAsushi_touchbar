//
//  AppDelegate.swift
//  sushibar
//
//  Created by mzp on 2016/10/29 and modified by RyderBlack on 2016/12/06
//  Copyright © 2016 mzp and RyderBlack. All rights reserved.
//

import Cocoa

fileprivate extension NSTouchBarItemIdentifier {
    static let unicorn = NSTouchBarItemIdentifier("jp.mzp.touchbar.unicorn")
    static let kome = NSTouchBarItemIdentifier("jp.mzp.touchbar.kome")
    static let fish = NSTouchBarItemIdentifier("jp.mzp.touchbar.fish")
	static let alexandra = NSTouchBarItemIdentifier("jp.mzp.touchbar.alexandra")
	static let cesaris = NSTouchBarItemIdentifier("jp.mzp.touchbar.cesaris")
	static let kevin = NSTouchBarItemIdentifier("jp.mzp.touchbar.kevin")
	static let elise = NSTouchBarItemIdentifier("jp.mzp.touchbar.elise")
    static let lane = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane")
    static let lane2 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane2")
    static let lane3 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane3")
    static let lane4 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane4")
    static let lane5 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane5")
	static let lane6 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane6")
    static let lane7 = NSTouchBarItemIdentifier("jp.mzp.touchbar.lane7")
}

@available(OSX 10.12.1, *)
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSTouchBarProvider, NSTouchBarDelegate {

    @IBOutlet weak var window: NSWindow!
    var touchBar: NSTouchBar?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "Welcome to my touch 🦄"

        if let frame = window.contentView?.frame {
            let unicorn = NSTextView(frame: NSMakeRect(frame.size.width/2-64, frame.size.height/2-64, 150, 128))
            unicorn.string = "🦄"
            unicorn.drawsBackground = false
            unicorn.isEditable = false
            unicorn.isSelectable = false
            unicorn.font = NSFont.systemFont(ofSize: 285)
            window.contentView?.addSubview(unicorn)
        }

        self.touchBar = makePrimaryTouchBar()
    }


    func makePrimaryTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.unicorn, .kome, .fish, .kevin, .alexandra, .cesaris, .elise]
        return mainBar
    }

    func makeSecondaryTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.lane]
        return mainBar
    }
    
    func makeThirdTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.lane2]
        return mainBar
    }
    
    func makeFourthTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.lane3]
        return mainBar
    }
    
    func makeFifthTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.lane4]
        return mainBar
    }
    
    func makeSixthTouchBar() -> NSTouchBar {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.lane5]
        return mainBar
    }
	
	func makeSeventhTouchBar() -> NSTouchBar {
		let mainBar = NSTouchBar()
		mainBar.delegate = self
		mainBar.defaultItemIdentifiers = [.lane6]
		return mainBar
	}
	func makeEigthTouchBar() -> NSTouchBar {
		let mainBar = NSTouchBar()
		mainBar.delegate = self
		mainBar.defaultItemIdentifiers = [.lane7]
		return mainBar
	}

    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItemIdentifier) -> NSTouchBarItem? {
        
        if identifier == .lane {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiLaneController()
            return item
            
        } else if identifier == .lane2 {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiLaneController2()
            return item
            
        } else if identifier == .lane3 {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiLaneController3()
            return item
            
        } else if identifier == .lane4 {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiLaneController4()
            return item
            
        } else if identifier == .lane5 {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiLaneController5()
            return item
			
		} else if identifier == .lane6 {
			let item = NSCustomTouchBarItem(identifier: identifier)
			item.viewController = SushiLaneController6()
			return item
			
		} else if identifier == .lane7 {
			let item = NSCustomTouchBarItem(identifier: identifier)
			item.viewController = SushiLaneController7()
			return item
			
        } else if identifier == .unicorn {
            let item = NSPopoverTouchBarItem(identifier: identifier)
            item.collapsedRepresentationLabel = "Uni la 🦄"
            item.popoverTouchBar = makeSecondaryTouchBar()
            return item
            
        } else if identifier == .kome {
            let item = NSPopoverTouchBarItem(identifier: identifier)
            item.collapsedRepresentationLabel = "Cuicui le 🐥"
            item.popoverTouchBar = makeThirdTouchBar()
            return item
            
        } else if identifier == .fish {
            let item = NSPopoverTouchBarItem(identifier: identifier)
            item.collapsedRepresentationLabel = "Pouli le 🐙"
            item.popoverTouchBar = makeFourthTouchBar()
            return item
            
		} else if identifier == .kevin {
			let item = NSPopoverTouchBarItem(identifier : identifier)
			item.collapsedRepresentationImage = #imageLiteral(resourceName: "keflex")
			item.popoverTouchBar = makeSeventhTouchBar()
			return item
			
        } else if identifier == .alexandra {
            let item = NSPopoverTouchBarItem(identifier : identifier)
            item.collapsedRepresentationImage = #imageLiteral(resourceName: "alex")
            item.popoverTouchBar = makeFifthTouchBar()
            return item
            
        } else if identifier == .cesaris {
            
            let item = NSPopoverTouchBarItem(identifier : identifier)
            item.collapsedRepresentationImage = #imageLiteral(resourceName: "cesar")
            item.popoverTouchBar = makeSixthTouchBar()
            return item
			
		} else if identifier == .elise {
			
			let item = NSPopoverTouchBarItem(identifier : identifier)
			item.collapsedRepresentationImage = #imageLiteral(resourceName: "elise")
			item.popoverTouchBar = makeEigthTouchBar()
			return item
			
        } else {
            return nil
        }
    }
    
    @objc
    func tapped(_ sender : NSObject) {
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}


