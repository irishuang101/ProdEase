//
//  TimerApp.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct TimerApp: View {
  @State private var timeRemaining = 120
  @State private var timerIsRunning = false
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  var body: some View {
    VStack {
        Text("Timer: \(timeRemaining)")
        .onReceive(timer) { _ in
          if timeRemaining > 0 && timerIsRunning {
            timeRemaining -= 1
          } else {
            timerIsRunning = false
          }
        }
      HStack{
        Button("Start"){
          timerIsRunning = true
        }
        Button("Reset"){
          timeRemaining = 120
        }
      }
    }
  }
}
struct TimerApp_Previews: PreviewProvider {
  static var previews: some View {
    TimerApp()
  }
}
