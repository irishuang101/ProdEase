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
                Image("Feynman1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
                NavigationLink(destination: FeyTask()) {
                    Text("Try the Method!")
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
