//
//  Spacedrep.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Spacedrep: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("SpacedRep")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
                NavigationLink(destination: Spacedtask()) {
                    Text("Try the Method!")
                }
            }
        }
    }
    
    struct Spacedrep_Previews: PreviewProvider {
        static var previews: some View {
            Spacedrep()
        }
    }
}
