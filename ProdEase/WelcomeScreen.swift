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
                  
                  NavigationLink(destination: ContentView2()) {
                      Image("toDoList")
                      
                  }
                  
              }//hstack
              
          }
          HStack{
              NavigationLink(destination: Skills()) {
                  Image("studyHabits")
              }
              NavigationLink(destination:AboutUs()){
                  Image("aboutUs")
              }
          }
          
          Spacer()
              .frame(height : 110)
          
          HStack{
              NavigationLink(destination:WelcomeScreen()) {
                  Image("home")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height : 70)
                  
                  
              }
              NavigationLink(destination: Skills()){
                  Image("studyHabitsIcon")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height : 70)
              }
              NavigationLink(destination: TimerApp()) {
                  Image("timerIcon")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height : 70)
                  
              }
              NavigationLink(destination: ContentView2()) {
                  Image("toDoListIcon")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height : 70)
                  
              }
          }//Hstack
      }
      }
    }
  
struct WelcomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeScreen()
  }
}






