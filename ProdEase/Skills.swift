//
//  View.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Skills: View {
    var body: some View {
        NavigationStack{
            Image("Header")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width:400)
            VStack {
                HStack{
                    VStack {
                        NavigationLink(destination: blurtingMethod()) {
                            Image("Blurting")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                        }
                        Text("Blurting Method")
                    } // end of blurting vstack
                    VStack {
                        NavigationLink(destination: Spacedrep()) {
                            Image("Spaced")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                        }
                        Text("Spaced Repetition")
                    } // end of spaced repetition
                    
                }
            } // end of Vstack 1
            VStack {
                HStack {
                    VStack {
                        NavigationLink(destination: Pomo()) {
                            Image("Pomo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                        }
                        Text("Pomodoro Method")
                    } // end of blurting vstack
                    VStack {
                        NavigationLink(destination: Feynman()) {
                            Image("Feynman")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                        }
                        Text("Feynman Technique")
                    }
                    
                }
                Spacer()
            } // end of Vstack 2
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    NavigationLink(destination: ContentView()) {
                        Image("home")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(height : 70)}
                    NavigationLink(destination: Skills()) {
                        Image("studyHabitsIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(height : 70)}
                    NavigationLink(destination: StopwatchApp()) {
                        Image("timerIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(height : 70)}
                    NavigationLink(destination: WelcomeScreen()) {
                        Image("toDoListIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(height : 70)}
                            
                            }
                        }
                    }
                }
            }
        
        struct Skills_Previews: PreviewProvider {
            static var previews: some View {
                Skills()
            }
        }
  
