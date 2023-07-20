//
//  pomoTasks.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct pomoTasks: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Image("PomoTask")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width:400)
                    NavigationLink(destination: TimerApp()) {
                        Text("Click here to go to the timer")
                    }
                }
            }
        }
    }
}

struct pomoTasks_Previews: PreviewProvider {
    static var previews: some View {
        pomoTasks()
    }
}
