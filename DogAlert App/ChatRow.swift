//
//  ChatRow.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/11/22.
//

import SwiftUI

struct ChatRow: View {
    
    var chatMessage: ChatMessage
    
    var body: some View {
        Group {
            if !chatMessage.isMe{
        HStack {
            Group {
                Text(chatMessage.avatar)
                Text(chatMessage.message)
                    .bold()
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(chatMessage.color)
                    .cornerRadius(10)
                
            }
        }
        } else {
            HStack {
                Group {
                    Spacer()
                    Text(chatMessage.message)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(10)
                        .background(chatMessage.color)
                                        .cornerRadius(10)
                    Text(chatMessage.avatar)
                }
            }
        }
}

    }
}
