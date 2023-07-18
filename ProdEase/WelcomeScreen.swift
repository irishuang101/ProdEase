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
        Text("Welcome to \nProdoEase")
          .font(.largeTitle)
          .multilineTextAlignment(.center)
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("timer")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("toDoList")
          }
        }
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("studyHabits")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("aboutUs")
          }
        }
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("home")
              .resizable()
              
              
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("studyHabitsIcon")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("timerIcon")
          }
          NavigationLink(destination: Text("You've arrived to the Second View ")) {
            Image("toDoListIcon")
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






