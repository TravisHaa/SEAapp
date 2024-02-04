//
//  calendar.swift
//  run
//
//  Created by Travis Ha on 7/21/22.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let month: String
    let day: String
    let event: String
}

struct calendar: View {
    let Items = [
        Item(month: "August", day: "8", event: "School Starts"),
        Item(month: "August", day: "24", event: "SEA Assembly"),
        Item(month: "September", day: "12", event: "SEA ice cream social"),
        Item(month: "November", day: "20", event: "SEA Egineering Week"),
        Item(month: "November", day: "30", event: "UC Applications Due"),
        Item(month: "December ", day: "2", event: "Finals week begins"),
        Item(month: "December", day: "20", event: "Winter Break begins"),
        Item(month: "January", day: "10", event: "Winter Break ends")
    ]
    
    let spacing: CGFloat = 10
    
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: 1)
        
        VStack{
        Text("Events").font(.largeTitle).bold()
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(Items) { item in
                    ItemView(item: item)                        .frame(width: 350, height: 100)
                        .cornerRadius(20)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
    }
        .shadow(color: Color.black.opacity(0.4), radius: 10, y: 5)
    }
    
    
    
    
    struct ItemView: View {
        let item: Item
        
        var body: some View {
            GeometryReader{ reader in
                Spacer()
                HStack {
                    Spacer()
                        .frame(width: 20)
                    VStack{
                        Spacer()
                        Text(item.month)
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Text(item.day)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(width: 20)
                    }
                Spacer()
                        .frame(width: 20)
                    Text(item.event)
                        .font(.system(size:20, weight: .bold, design: .rounded))
                        .foregroundColor(Color.white)
                        .foregroundColor(Color.black.opacity(0.9))
                    Spacer()
                            .frame(width: 1)
                }
            }
            .frame(height: 100)
            .background(Color.blue)
            
        }
            
    }
    
}

struct calendar_Previews: PreviewProvider {
    static var previews: some View {
        calendar()
    }
}

