//
//  CircleView.swift
//  SwiftUIChallenge
//
//  Created by Udhayanila Mohanraj on 20/01/22.
//

import SwiftUI

struct CircleView: View {
    @State var color: String = "white"
    @State var width: CGFloat = 0
    @State var height: CGFloat = 0
    
    var body: some View {
        Circle()
            .fill(Color(color))
            .frame(width: width, height: height)
            .offset(x: 0, y: 0)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
