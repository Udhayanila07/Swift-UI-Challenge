//
//  TextView.swift
//  SwiftUIChallenge
//
//  Created by Udhayanila Mohanraj on 20/01/22.
//

import SwiftUI

struct TextView: View {
    @State var text: String = "xxxxx"
    @State var font: String = ""
    @State var size: CGFloat = 0
    @State var color: String = "white"
    
    var body: some View {
        Text(text)
            .font(Font.custom(font, size: size))
            .foregroundColor(Color(color))
            .offset(x: 0, y: 0)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
