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
                NavigationLink(destination: pomoTasks()) {
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
