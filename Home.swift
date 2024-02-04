//
//  Home.swift
//  run
//
//  Created by Travis Ha on 7/21/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            Text("SEA Home page").font(.largeTitle).bold()
            
        ScrollView(.vertical, showsIndicators: true) {
        VStack {
            //takes strings and implements them into ImageTextView struct, which creates the UI for Home Page, including the buttons and pop up screen
            ImageTextView(image: "logo", title: "welcome to the SEA app!", subtitle: "learn how to use this app", sheettext: "BELLO!")
            ImageTextView(image: "team mu", title: "Announcement: Robotics Club Kicks off", subtitle: "learn about this year's game", sheettext: "BELLO!")
            ImageTextView(image: "bootcamp", title: "Welcome Freshman!", subtitle: "Read about SEA requirements here", sheettext: "BELLO!")
            ImageTextView(image: "hs", title: "First month of school", subtitle: "what to be aware of", sheettext: "BELLO!")
            
         
        }
            
        }
        }

    }
    struct ImageTextView: View {

        var image: String
        var title: String
        var subtitle: String
        var sheettext: String
        
        //creates a sheet variable to toggle when the sheet opens and closes based on boolean value
        @State var showSheet: Bool = false
        
        var body: some View {
            
            VStack(alignment: .leading) {
                Button {
                    showSheet.toggle()
                } label: {
                    VStack() {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    VStack(alignment: .leading) {
                        
                        Text(title)
                            .font(.title)
                            .fontWeight(.black)
                        
                        Text(subtitle)
                            .font(.headline)
                        
                    }
                    .padding(10)
                    
                }
                .padding(.bottom, 20)
                }
            }
            
            //binds var showsheet's boolean to a sheet, and when the boolean turns true, this sheet is shown
            .sheet(isPresented: $showSheet,
                   content: {
                Text(sheettext)
                
            })
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

