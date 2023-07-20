//
//  StopwatchApp.swift
//  ProdEase
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct StopwatchApp: View {
    @State private var timeElapsed: TimeInterval = 0
    @State private var timerIsActive = false
    @State private var timer: Timer?
    
    var body: some View {
        
        VStack {
            Text("\(timeElapsed.formattedTime())")
                .font(.largeTitle)
                
            HStack {
                Button(action: {
                    startTimer()
                }) {
                    Text("Start")
                }
                .disabled(timerIsActive)
                    
                Button(action: {
                    stopTimer()
                }) {
                    Text("Stop")
                }
                .disabled(!timerIsActive)
                    //
                Button(action: {
                    resetTimer()
                }) {
                    Text("Reset")
                }
                .disabled(timeElapsed == 0)
                }//Hstack
                
                
        } //End of VStack
    }
    private func startTimer() {
        timerIsActive = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            timeElapsed += 1
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
        timerIsActive = false
    }
    
    private func resetTimer() {
        stopTimer()
        timeElapsed = 0
    }
}

extension TimeInterval {
    func formattedTime() -> String {
        let minutes = Int(self) / 60
        let seconds = Int(self) % 60
        
        return String(format: "%02d:%02d", minutes, seconds)
    }
}


struct StopwatchApp_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchApp()
    }
}
