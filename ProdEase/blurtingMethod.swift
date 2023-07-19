//
//  blurtingMethod.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct blurtingMethod: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("Blurting")
                NavigationLink(destination: blurtingTask()) {
                    Text("Try the Method!")
                }
            }
        }
    }
    
    struct blurtingMethod_Previews: PreviewProvider {
        static var previews: some View {
            blurtingMethod()
        }
    }
}
