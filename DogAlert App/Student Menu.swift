//
//  Student Menu.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/10/22.
//

import SwiftUI

struct Student_Menu: View {
    var body: some View {
     //  NavigationView () {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("Maroon"),
                                                           Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all, edges: .all)
                VStack (spacing: 10){
                    Image(systemName: "")
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    NavigationLink(destination: Health_Info()){ Image("Health Icon")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                    NavigationLink(destination: Alert_Page()){ Image("Alert Icon")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                    NavigationLink(destination: Text_a_Nurse()){ Image("Message Icon")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 100, trailing: 0))
                        
                        
                    }
                }
            }
        }
    }
 //     }

struct Student_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Student_Menu()
    }
}
