//
//  TextFieldView.swift
//  SwiftUIChallenge
//
//  Created by Udhayanila Mohanraj on 19/01/22.
//

import SwiftUI

struct TextFieldView: View {
    @State var text: String = ""
    @State var textFieldName: String = ""
    @State var width: CGFloat = 0
    @State var padding: CGFloat = 0
    @State var color: String = "white"
    let screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        TextField(textFieldName, text: $text)
            .padding(.leading, padding)
            .font(Font.custom("Oswald-Regular", size: 15))
            .frame(width: width, height: 52)
            .foregroundColor(.white)
            .background(Color(color))
            .cornerRadius(25)
            .offset(x: 0, y: 0)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
