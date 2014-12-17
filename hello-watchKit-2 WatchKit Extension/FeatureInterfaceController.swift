//
//  FeatureInterfaceController.swift
//  hello-watchKit-2
//
//  Created by CHRISTINA GUNARTO on 12/17/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

import Foundation
import WatchKit

class FeatureInterfaceController: WKInterfaceController
{
    
    @IBOutlet weak var featureLabel: WKInterfaceLabel!
    @IBOutlet weak var featureImage: WKInterfaceImage!

    override func awakeWithContext(context: AnyObject!)
    {
        if let context = context as? String
        {
            featureLabel.setText(context)
            featureImage.setImageNamed(context)
        }
    }

    
}
