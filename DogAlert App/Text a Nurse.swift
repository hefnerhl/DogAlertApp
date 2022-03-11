//
//  Text a Nurse.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/11/22.
//

import SwiftUI

struct ChatMessage : Hashable {
    var message: String
    var avatar: String
    var color: Color
    var isMe: Bool = false
}

struct Text_a_Nurse: View {
    @StateObject var chatController = ChatController()
    @State var composedMessage: String = ""
//    var messages = [
//        ChatMessage(message: "Hello world", avatar: "A", color: .red),
//        ChatMessage(message: "Hi", avatar: "B", color: .blue)
//    ]
    var body: some View {
        VStack {
        List {
            ForEach(chatController.messages, id: \.self) { msg in
                    ChatRow(chatMessage: msg)
                   
            }
        }
     
        HStack {
            TextField("Message...", text: $composedMessage).frame(minHeight: CGFloat(30))
            Button(action: sendMessage) {
                Text("Send")
            }
        }.frame(minHeight: CGFloat(50)).padding()
    }
    }
    func sendMessage() {
        chatController.sendMessage(ChatMessage(message: composedMessage, avatar: "C", color: .green, isMe: true))
        composedMessage = ""
        
    }
}

#if DEBUG
struct Text_a_Nurse_Previews: PreviewProvider {
    static var previews: some View {
        Text_a_Nurse()
    }
}
#endif
