//
//  contacts.swift
//  run
//
//  Created by Travis Ha on 7/21/22.
//will have emails for all SEA teachers and SEA council, link to SEA website, remind join codes, maybe some SEA reuiqrement info

import SwiftUI

struct contacts: View {
    var body: some View {
        VStack {
            Text("Contacts")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Text("Mr.Moehnke: rmoehnke@tusd.net")
                .padding(.bottom, 2.0)
            Text("Mrs. Lee: alee@tusd.net")
            Spacer()
            
            
        }
    }
}

struct contacts_Previews: PreviewProvider {
    static var previews: some View {
        contacts()
    }
}
