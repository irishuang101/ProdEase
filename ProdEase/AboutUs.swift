//
//  AboutUs.swift
//  ProdEase
//
//  Created by Lindsey Kwok on 7/18/23.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        VStack{
            Image("team")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height : 300)
            Text("About Us")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
