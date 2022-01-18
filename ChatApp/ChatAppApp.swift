//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Marco Mascorro on 1/18/22.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
