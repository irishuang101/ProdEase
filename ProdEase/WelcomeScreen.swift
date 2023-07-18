//
//  WelcomeScreen.swift
//  ProdEase
//
//  Created by Lindsey Kwok on 7/18/23.
//

import SwiftUI
struct ContentView: View {
  var body: some View {
    NavigationStack{
      VStack{
        Text("Welcome to \nProdoEase")
          .font(.largeTitle)
          .multilineTextAlignment(.center)
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("timer")
          }
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("toDoList")
          }
        }
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("studyHabits")
          }
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("aboutUs")
          }
        }
        HStack{
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("home")
              .resizable()
              
          }
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("studyHabitsIcon")
          }
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("timerIcon")
          }
          NavigationLink(destination: Text("You've arrived to the Second View :confetti_ball:")) {
            Image("toDoListIcon")
          }
        }//Hstack
      }
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}






