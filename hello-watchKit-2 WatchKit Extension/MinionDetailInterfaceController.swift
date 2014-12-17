//
//  MinionDetailInterfaceController.swift
//  hello-watchKit-2
//
//  Created by CHRISTINA GUNARTO on 12/17/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

import Foundation
import WatchKit

class MinionDetailInterfaceController:WKInterfaceController
{
    @IBOutlet weak var label: WKInterfaceLabel!
    @IBOutlet weak var image: WKInterfaceImage!

    override func awakeWithContext(context: AnyObject!)
    {
        if let context = context as? String
        {
            label.setText(context)
            image.setImageNamed(context)
        }
    }

}