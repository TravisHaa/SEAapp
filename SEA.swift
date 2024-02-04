//
//  clubs.swift
//  run
//
//  Created by Travis Ha on 7/21/22.
//This screen will show the different SEA clubs, scholarships, and apparel with a description, as well as a button that leads to a google form link to sign up. Maybe 4 year plan info and all those requirements?

import SwiftUI

struct tile: Identifiable {
    let id = UUID()
    let title: String
}
let Items = [
tile(title: "Vex Robotics Club"),
tile(title: "Hackathon"),
tile(title: "Scholarship 1"),
tile(title: "Food Pantry Volunteer"),
tile(title: "Girls Who Code"),
tile(title: "Business Club"),
tile(title: "Study Week volunteer"),
tile(title: "Vex Robotics volunteer"),
]

struct SEA: View {
    let spacing: CGFloat = 20
    let colors: [Color] = [.red, .blue, .green, .yellow]
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: 2)
        
        VStack{
        Text("SEA Opportunities").font(.largeTitle).bold()
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(Items) { item in
                    ItemView(item: item)
                        .frame(width: 170, height: 170)
                        .cornerRadius(30)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
    }
        .shadow(color: Color.black.opacity(0.4), radius: 10, y: 5)
    }
    
    
    
    
    struct ItemView: View {
        let item: tile
        
        @State var showSheet: Bool = false
        
        var body: some View {
                Button(action: {
                    showSheet.toggle()
                            }, label: {
                        Text("hello")
                                    .foregroundColor(Color.white)
                            })
                .padding(.all, 50.0)
                .sheet(isPresented: $showSheet, content: {
                        Text("please work")
                        })
                .background(Color.blue)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        }
    }
            
    
    

  

    
    
   
    

struct clubs_Previews: PreviewProvider {
    static var previews: some View {
        SEA()
    }
}

    }
    

