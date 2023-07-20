//
//  Pomo.swift
//  ProdEase
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Pomo: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("pomoPage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
                NavigationLink(destination: pomoTasks()) {
                    Text("Try the Method")
                        
        }
        
            }
            }
        }
    }




struct Pomo_Previews: PreviewProvider {
    static var previews: some View {
        Pomo()
    }
}
