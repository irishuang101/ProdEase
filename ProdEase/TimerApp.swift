//
//  TimerApp.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI


struct TimerApp: View {
    @State private var timeRemaining = 60
    @State private var timerIsRunning = false
    var body: some View {
        VStack {
                Text("Timer: \(timeRemaining)")
                    .font(.largeTitle)
                    .padding()
                    
                if timerIsRunning {
                    Button("Stop Timer") {
                        timerIsRunning = false
                        }
                    } else {
                        Button("Start Timer") {
                            timerIsRunning = true
                            startTimer()
                        }
                    }
                }
            }

    private func startTimer() {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer.invalidate()
                    timerIsRunning = false
                }
            }
        }
    }

struct TimerApp_Previews: PreviewProvider {
    static var previews: some View {
        TimerApp()
    }
}
