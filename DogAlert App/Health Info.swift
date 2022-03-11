//
//  Health Info.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/10/22.
//

import SwiftUI

struct Health_Info: View {
    var body: some View {
       // NavigationView () {
        ZStack {
                 LinearGradient(gradient: Gradient(colors: [Color("Maroon"),
                                                            Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                     .ignoresSafeArea(.all, edges: .all)
                 VStack (spacing: 10){
                     Image(systemName: "")
                     
                    Image("Health Heart")
                             .resizable()
                             .frame(width: 100, height: 100)
                             .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                     Divider() .frame(width: 415, height: 10, alignment: .center)
                         .background(Color.white)
                         .padding(EdgeInsets(top: 0, leading: 0, bottom: 85, trailing: 0))
                    
                     
                     Link(destination: URL(string: "https://www.youtube.com/watch?v=IaVaoja2Uk4&list=PLlmsuGK7C_-DY5Q5inZQDo7zWMBxNRqSQ")!) {
                         VStack {
                             Image("Video Icon")
                                 .resizable()
                                 .frame(width: 200, height: 150)
                                 .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 0))
                     
                     Link(destination: URL(string: "https://e-cigarettes.surgeongeneral.gov/")!) {
                         VStack {
                             Image("Book Icon")
                                 .resizable()
                                 .frame(width: 215, height: 200)
                                 .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 0))
                             
    
                             

    
                 }
}
                 }
             }
    }
        }
        }
}
//}
        
struct Health_Info_Previews: PreviewProvider {
    static var previews: some View {
        Health_Info()
    }
}
