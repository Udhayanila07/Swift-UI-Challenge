//
//  circle.swift
//  SwiftUIChallenge
//
//  Created by Udhayanila Mohanraj on 16/01/22.
//

import SwiftUI

struct clippedCircle: View {
    @State var color: Color = .blue
    @State var circleXOffSet: CGFloat = 0
    @State var circleYOffSet: CGFloat = 0
    @State var clippedCircleXOffSet: CGFloat = 0
    @State var clippedCircleYOffSet: CGFloat = 0
    let width: CGFloat = (UIScreen.main.bounds.height)*1.50/10
    let height: CGFloat = (UIScreen.main.bounds.height)*1.50/10
    let clippedCircleColor: Color = Color("skyBlue")
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: width, height: height)
                .offset(x: circleXOffSet, y: circleYOffSet)
            Circle()
                .fill(clippedCircleColor)
                .frame(width: width, height: width)
                .offset(x: clippedCircleXOffSet, y: clippedCircleYOffSet)
                .clipped()
        }
        .frame(width: width, height: height)
        .cornerRadius(height/2)
    }
}

struct circle_Previews: PreviewProvider {
    static var previews: some View {
        clippedCircle()
    }
}
