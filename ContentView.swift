//
//  ContentView.swift
//  run
//
//  Created by Travis Ha on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        TabView{
            Home()
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            calendar()
                .tabItem(){
                    Image(systemName: "calendar")
                    Text("Events")
                }
            SEA()
                .tabItem(){
                    Image(systemName: "lightbulb")
                    Text("SEA")
                }
            contacts()
                .tabItem(){
                    Image(systemName: "person.fill")
                    Text("Contacts")
                }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                
            }
        }
    }


}

