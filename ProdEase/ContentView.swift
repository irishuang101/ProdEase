//
//  ContentView.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        VStack {
            Spacer()
                .frame(height: 200)
            
            Text("ProdEase")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.063, green: 0.143, blue: 0.633))
            Spacer()
                .frame(height: 10)
            
            Text("Productivity Made Easier")
                .fontWeight(.bold)
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height : 200)
            
        NavigationLink(destination: Skills()) {
               Text("Skills")
            }

           
            
            Image("bottomPicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height : 300)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
