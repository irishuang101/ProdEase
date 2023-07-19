//
//  Spacedtask.swift
//  ProdEase
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct Spacedtask: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("SpacedTask")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
            }
        }
    }
}

struct Spacedtask_Previews: PreviewProvider {
    static var previews: some View {
        Spacedtask()
    }
}
