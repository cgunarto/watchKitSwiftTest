//
//  MinionInterfaceController.swift
//  hello-watchKit-2
//
//  Created by CHRISTINA GUNARTO on 12/17/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

import Foundation
import WatchKit

class MinionInterfaceController:WKInterfaceController
{
    let minions = ["Bob", "Dave", "Jerry", "Jorge", "Kevin", "Mark", "Phil", "Stuart", "Tim"]

    @IBOutlet weak var table: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject!)
    {
        table.setNumberOfRows(minions.count, withRowType: "minionRow")

        for (index,value) in enumerate(minions)
        {
            if let row = table.rowControllerAtIndex(index) as? MinionRowController
            {
                row.image.setImageNamed(value)
                row.nameLabel.setText(value)
            }
        }
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
    {
        return minions[rowIndex]
    }
    
}