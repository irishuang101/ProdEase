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
            Spacer()
                .frame(height : 10)
            Text("Our mission is to help students, including ourselves, with studying and absorbing information presented in classrooms effectively. It is so important to encourage students to learn now more than ever.\n\n\nThank you so much for downloading our app! We hope you find it as special as we do! \n\n-The creators")
                .multilineTextAlignment(.leading)
                .padding(.leading)
                .padding(.trailing)
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
