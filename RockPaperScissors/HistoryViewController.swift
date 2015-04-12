//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Chris Archibald on 4/12/15.
//  Copyright (c) 2015 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    var history: [RPSMatch]!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HistoryCell") as! UITableViewCell
        let game = self.history[indexPath.row]
        
        //If the player beats the computer
        if game.p1.defeats(game.p2) {
            cell.textLabel?.text = "Win!"
        } else {
            cell.textLabel?.text = "Lose."
        }
        
        if let detailTextLable = cell.detailTextLabel {
            detailTextLable.text = game.p1.description + " vs " + game.p2.description
        }
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    @IBAction func backToHome(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}