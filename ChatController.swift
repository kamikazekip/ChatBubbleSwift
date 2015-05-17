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
    
    var messages: [Message] = [Message]()
    var user: String = "Erik"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 59.6
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        messages.append(Message(sender: "Erik", message: "Hallo ik heb een probleem", time: "18:03"))
        messages.append(Message(sender: "Jip", message: "Hoe kan ik jou dan helpen?",  time: "18:04"))
        messages.append(Message(sender: "Erik", message: "Nou... Ik heb op het moment van het typen van dit lange bericht nog geen idee van hoe je chatbubbles maakt", time: "18:06"))
        self.tableView.reloadData()
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
            println(cell.message.frame.width)
            
            var newSize = cell.message.frame.width
            cell.ChatBubbleImage.frame = CGRectMake(100, 0, newSize, cell.frame.height); // set as you want
            var image = UIImage(named: "ChatBubbleLeft")!
            cell.ChatBubbleImage.image = image
            println(image.size.width)
            return cell
        }
    }
}

