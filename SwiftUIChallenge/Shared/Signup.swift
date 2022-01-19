//
//  Signup.swift
//  SwiftUIChallenge (iOS)
//
//  Created by Udhayanila Mohanraj on 16/01/22.
//

import SwiftUI

struct Signup: View {
    @State private var firstName: String = "John"
    @State private var lastName: String = "Doe"
    @State private var email: String = "Johndoe@gmail.com"
    @State private var countryCode: String = "+91"
    @State private var number: String = "997638374"
    @State private var center: String = "Select Center"
    @State private var isLoginButtonTapped: Bool = false
    var screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("blue")
                    .ignoresSafeArea()
                TextView(text: "Hello...!", font: "Pacifico-Regular", size: 37, color: "white")
                    .offset(x: -100, y: -355)
                ZStack {
                    TextFieldView(text: firstName, textFieldName: "First Name", width: screenSize.width - 50, padding: 30, color: "lightBlue")
                        .offset(x: 0, y: -259)
                    TextFieldView(text: lastName, textFieldName: "Last Name", width: screenSize.width - 50, padding: 30, color: "lightBlue")
                        .offset(x: 0, y: -180)
                    TextFieldView(text: email, textFieldName: "Email", width: screenSize.width - 50, padding: 30, color: "lightBlue")
                        .offset(x: 0, y: -105)
                    TextFieldView(text: number, textFieldName: "Number", width: screenSize.width - 50, padding: 100, color: "lightBlue")
                        .offset(x: 0, y: -30)
                    TextFieldView(text: countryCode, textFieldName: "Country Code", width: 90, padding: 30, color: "veryLightBlue")
                        .offset(x: -130, y: -30)
                    TextFieldView(text: center, textFieldName: "Center", width: screenSize.width - 50, padding: 30, color: "lightBlue")
                        .offset(x: 0, y: 45)
                    
                    Button("Signup") {
                        print("Signup")
                    }
                    .padding()
                    .font(Font.custom("Lato-Bold", size: 20))
                    .frame(width: screenSize.width - 275, height: 52)
                    .foregroundColor(Color("white"))
                    .background(Color("orange"))
                    .cornerRadius(25)
                    .offset(x: 0, y: 165)
                    
                    ZStack {
                        NavigationLink(destination: Login(), isActive: $isLoginButtonTapped) {
                        }
                        Button("Login") {
                            isLoginButtonTapped = true
                        }
                        .padding()
                        .font(Font.custom("Oswald-Regular", size: 16))
                        .foregroundColor(Color("orange"))
                        .background(Color("blue"))
                        .cornerRadius(25)
                        .offset(x: 59, y: 330)
                    }
                    TextView(text: "Already Have Account?", font: "Oswald-Regular", size: 16, color: "white")
                        .offset(x: -27, y: 330)
                    
                }
                CircleView(color: "orange", width: (screenSize.height)*2/10, height: (screenSize.height)*2/10)
                    .offset(x: -200, y: 355)
                CircleView(color: "yellow", width: (screenSize.height)*2/10, height: (screenSize.height)*2/10)
                    .offset(x: 190, y: 385)
            }
        }.navigationBarHidden(true)
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
