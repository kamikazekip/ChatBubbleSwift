//
//  ViewController.swift
//  chatBubbleSwift
//
//  Created by User on 16/05/15.
//  Copyright (c) 2015 Avans. All rights reserved.
//

import UIKit

class ChatController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var messages: [Message] = [Message(sender: "Erik", message: "Hallo ik heb een probleem", time: "18:03"),
                               Message(sender: "Jip", message: "Nou... Ik heb op het moment van het typen van dit lange bericht nog geen idee van hoe je chatbubbles maakt",  time: "18:04"),
                                Message(sender: "Erik", message: "Nou... Ik heb op het moment van het typen van dit lange bericht nog geen idee van hoe je chatbubbles maakt", time: "18:06")]
    var user: String = "Erik"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 59.6
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var message: Message = self.messages[indexPath.row]
        if(message.sender == self.user){
            var cell: ChatBubbleRight = tableView.dequeueReusableCellWithIdentifier("chatBubbleRight") as! ChatBubbleRight
            cell.message.text = message.message
            cell.time.text = message.time
            return cell
        } else {
            var cell: ChatBubbleLeft = tableView.dequeueReusableCellWithIdentifier("chatBubbleLeft") as! ChatBubbleLeft
            cell.message.text = message.message
            cell.time.text = message.time
            cell.TopLeft.image = UIImage(named: "LeftTopLeft")!
            cell.TopMiddle.image = UIImage(named: "LeftTopMiddle")!
            cell.TopRight.image = UIImage(named: "LeftTopRight")!
            cell.MiddleLeft.image = UIImage(named: "LeftMiddleLeft")!
            cell.MiddleMiddle.image = UIImage(named: "LeftMiddleMiddle")!
            cell.MiddleRight.image = UIImage(named: "LeftMiddleRight")!
            cell.BottomLeft.image = UIImage(named: "LeftBottomLeft")!
            cell.BottomMiddle.image = UIImage(named: "LeftBottomMiddle")!
            cell.BottomRight.image = UIImage(named: "LeftBottomRight")!
            return cell
        }
    }
}

