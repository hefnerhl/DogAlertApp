//
//  Accounts Page.swift
//  DogAlert App
//
//  Created by Heather Hefner on 3/10/22.
//

import SwiftUI

struct Accounts_Page: View {
    var body: some View {
      //  NavigationView () {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("Maroon"),
                                                           Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all, edges: .all)
                
                VStack (spacing: 10){
                    Image(systemName: "")
                    
                    NavigationLink(destination: Student_Menu()){ Image("Student Paw")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                    NavigationLink(destination: Faculty_Menu()){ Image("Faculty Paw")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                    NavigationLink(destination: Admin_Menu()){ Image("Admin Paw")
                            .resizable()
                            .frame(width: 225, height: 225)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        
                        
                    }
                }
               // .navigationBarHidden(true)
            }
        }
    }

//}

struct Accounts_Page_Previews: PreviewProvider {
    static var previews: some View {
        Accounts_Page()
    }
}
