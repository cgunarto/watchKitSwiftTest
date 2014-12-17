//
//  InterfaceController.swift
//  hello-watchKit-2 WatchKit Extension
//
//  Created by CHRISTINA GUNARTO on 12/17/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    let features = ["Glances","Notifications","Apps"]


    @IBAction func onBrowseButtontapped()
    {

            let controllers = [String](count:features.count, repeatedValue: "FeatureInterfaceController")

               presentControllerWithNames(controllers, contexts: features)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        NSLog("%@ awakeWithContext", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
