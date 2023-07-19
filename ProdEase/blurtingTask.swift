//
//  blurtingTask.swift
//  ProdEase
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct blurtingTask: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("BlurtingTask")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
            }
        }
    }
}

struct blurtingTask_Previews: PreviewProvider {
    static var previews: some View {
        blurtingTask()
    }
}
