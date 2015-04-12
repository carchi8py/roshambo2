//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Chris Archibald on 4/12/15.
//  Copyright (c) 2015 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController {
    
    var history: [RPSMatch]!
    
    
    @IBAction func backToHome(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}