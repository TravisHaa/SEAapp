//
//  SplashScreen.swift
//  run
//
//  Created by Travis Ha on 7/9/22.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView()
        }else{
            VStack {
                VStack{
                ZStack{
                    //configures background
                    Image("background")
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.blue)
                    
                        //configures all text and images on start screen
                    VStack{
                        Spacer()
                        HStack{ Text("Space and Engineering")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.yellow)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 34.0)
                            .aspectRatio(contentMode: .fit)
                        }
                        
                        Text("Academy")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.yellow)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing], 34.0)
                        .aspectRatio(contentMode: .fit)
                        .lineSpacing(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                     
                        Spacer()
                        Image("logo")
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Text("By: Travis Ha")
                            .font(.title2)
                            .fontWeight(.thin)
                            .foregroundColor(Color.yellow)
                            .lineLimit(0)
                            Spacer()
                    }
                }
            //states for size and opacity to change as screen appears
            .scaleEffect(size)
            .opacity(opacity)
        //creates an ease in animation with size increasing by .9 and opacity increasing by 1 for 1 sec
            .onAppear() {
                withAnimation(.easeIn(duration:1.0)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
        }
        //creates time length of entire animation to transition to main content view
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    //adds animation to transition to main screen
                    withAnimation{self.isActive = true}
                    
                }
            }
            }
        }
    }
        }
  

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SplashScreen()
                .previewDevice("iPhone 11")
        }
    }
}
}
