//
//  Message.swift
//  ChatApp
//
//  Created by Marco Mascorro on 1/18/22.
//

import Foundation


struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
    
}
