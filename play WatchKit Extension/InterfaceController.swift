//
//  InterfaceController.swift
//  play WatchKit Extension
//
//  Created by Maciej Stanik on 15/08/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var responseLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func blueButtonTapped() {
        
        WKInterfaceController.openParentApplication(["Name": "Maciek"], reply: { (reply, error) -> Void in
            if let responseMessage = reply["Message"] as? String {
                println(responseMessage)
                
                self.responseLabel.setText(responseMessage)
            }
        })
    }
   
  
}
