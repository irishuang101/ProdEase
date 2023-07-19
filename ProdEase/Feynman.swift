//
//  Feynman.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Feynman: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("Feynman")
                NavigationLink(destination: WelcomeScreen()) {
                    Text("Home")
                }
        }
       
        }
    }
}

struct Feynman_Previews: PreviewProvider {
    static var previews: some View {
        Feynman()
    }
}
