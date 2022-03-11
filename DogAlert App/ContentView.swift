//
//  ContentView.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/10/22.
//

import SwiftUI

struct ContentView: View { 
    var body: some View {
        NavigationView () {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("Maroon"), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all, edges: .all)
                VStack (spacing: 10){
                    Image(systemName: "")
                    Text("DOGALERT")
                        .font(.custom("Chalkboy", size: 100))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    Image ("No Vaping")
                        .resizable()
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .overlay(Circle()
                                    .stroke(Color.black, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(EdgeInsets(top: 65, leading: 30, bottom: 30, trailing: 30))
                    
                    NavigationLink(destination: Accounts_Page()){ Image("Enter Pawprint")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

