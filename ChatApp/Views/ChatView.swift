//
//  ChatView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 1/18/22.
//

import SwiftUI

struct ChatView: View {
    @StateObject var messagesManager = MessagesManager()
       
       var body: some View {
               VStack {
                   VStack {
                       
                           titleRow()
                       
                       
                       ScrollViewReader { proxy in
                           ScrollView {
                               ForEach(messagesManager.messages, id: \.id) { message in
                                   MessageBubble(message: message)
                               }
                           }
                           .background(.white)
                           .onChange(of: messagesManager.lastMessageId) { id in
                               // When the lastMessageId changes, scroll to the bottom of the conversation
                               withAnimation {
                                   proxy.scrollTo(id, anchor: .bottom)
                               }
                           }
                       }
                   }
                   .background(.ultraThinMaterial)
                   
                   MessageField()
                       .environmentObject(messagesManager)
               }
            
               .navigationBarHidden(true)
       }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
