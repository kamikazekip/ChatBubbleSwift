//
//  Message.swift
//  chatBubbleSwift
//
//  Created by User on 16/05/15.
//  Copyright (c) 2015 Avans. All rights reserved.
//

import Foundation

class Message {
    var sender: String?
    var message: String?
    var time: String?
    
    init(sender: String, message: String, time: String){
        self.sender = sender
        self.message = message
        self.time = time
    }
}
