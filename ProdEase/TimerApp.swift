//
//  TimerApp.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct TimerApp: View {
    @State private var timer: Timer?
        @State private var timeRemaining = 1500
        
        var body: some View {
            NavigationStack{
                VStack {
                    Text("Pomodoro Timer")
                    Text(timeString(timeRemaining))
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        Button(action: {
                            startTimer()
                        }, label: {
                            Text("Start")
                        })
                        .padding()
                        
                        Button(action: {
                            stopTimer()
                        }, label: {
                            Text("Stop")
                        })
                        .padding()
                        
                        Button(action: {
                            resetTimer()
                        }, label: {
                            Text("Reset")
                        })
                        .padding()
                    }
                    
                    
                    }//Vstack
                NavigationLink(destination: StopwatchApp()){
                    Text("Stopwatch")
                    }
                }
            }//var body
        
        private func startTimer() {
            if timer == nil {
                timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    } else {
                        stopTimer()
                    }
                }
            }
        }//startTimer func
        
        private func stopTimer() {
            timer?.invalidate()
            timer = nil
        }
        
        private func resetTimer() {
            stopTimer()
            timeRemaining = 1500 // Reset back to 5 minutes
        }
        
        private func timeString(_ seconds: Int) -> String {
            let minutes = seconds / 60
            let seconds = seconds % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
}

struct TimerApp_Previews: PreviewProvider {
  static var previews: some View {
    TimerApp()
  }
}
