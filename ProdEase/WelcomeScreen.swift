//
//  WelcomeScreen.swift
//  ProdEase
//
//  Created by Lindsey Kwok on 7/18/23.
//

import SwiftUI
struct WelcomeScreen: View {
  var body: some View {
    NavigationStack{
      VStack{
          Spacer()
              .frame(height : 100)
        Text("Welcome to \nProdoEase")
          .font(.largeTitle)
          .multilineTextAlignment(.center)
          
        HStack{
          NavigationLink(destination: TimerApp()) {
            Image("timer")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("toDoList")
          }
        }
        HStack{
          NavigationLink(destination: Skills()) {
            Image("studyHabits")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("aboutUs")
          }
        }
          
          Spacer()
              .frame(height : 110)
          
          HStack{
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("home")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(height : 70)
              
              
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("studyHabitsIcon")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height : 70)
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("timerIcon")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height : 70)
              
//              Spacer()
//                  .frame(height : 1)
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("toDoListIcon")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height : 70)
                
          }
        }//Hstack
      }
    }
  }
}
struct WelcomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeScreen()
  }
}






