//
//  ChatBubbleLeft.swift
//  chatBubbleSwift
//
//  Created by User on 16/05/15.
//  Copyright (c) 2015 Avans. All rights reserved.
//

import UIKit

class ChatBubbleLeft: UITableViewCell {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var ChatBubbleLeftLeft: UIImageView!
    @IBOutlet weak var ChatBubbleLeftMiddle: UIImageView!
    @IBOutlet weak var ChatBubbleLeftRight: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        message.numberOfLines = 0
        message.lineBreakMode = .ByWordWrapping // or NSLineBreakMode.ByWordWrapping
        message.sizeToFit()
        println("HALLO")
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
