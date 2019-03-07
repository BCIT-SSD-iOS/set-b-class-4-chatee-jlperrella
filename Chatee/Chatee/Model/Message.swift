//
//  Message.swift
//  Chatee
//
//  Created by jp on 2019-03-07.
//  Copyright © 2019 Jordan Perrella. All rights reserved.
//

import Foundation

class Message {
  var sender: String
  var messageBody: String
  
  init(sender: String, messageBody: String) {
    self.sender = sender
    self.messageBody = messageBody
  }
}
