//
//  ChatController.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/11/22.
//
import Combine
import SwiftUI

class ChatController : ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var messages = [
        ChatMessage(message: "Hello world", avatar: "A", color: .red),
        ChatMessage(message: "Hi", avatar: "B", color: .blue)
    ]
    func sendMessage(_ chatMessage: ChatMessage) {
        messages.append(chatMessage)
        didChange.send(())
    }
}

import Foundation
