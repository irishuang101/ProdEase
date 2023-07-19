//
//  FeyTask.swift
//  ProdEase
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct FeyTask: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("FeyTask")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
            }
        }
    }
}

struct FeyTask_Previews: PreviewProvider {
    static var previews: some View {
        FeyTask()
    }
}
