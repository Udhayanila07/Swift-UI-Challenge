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
                ZStack {
                    Text("Hello...!")
                        .foregroundColor(Color("white"))
                        .font(Font.custom("Pacifico-Regular", size: 37))
                        .offset(x: -100, y: -355)
                    TextField("first name", text: $firstName)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: -259)
                    TextField("first name", text: $lastName)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: -180)
                    TextField("first name", text: $email)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: -105)
                    TextField("first name", text: $number)
                        .padding(.leading, 100)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: -30)
                    TextField("first name", text: $countryCode)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: 90, height: 52)
                        .foregroundColor(.white)
                        .background(Color("veryLightBlue"))
                        .cornerRadius(25)
                        .offset(x: -130, y: -30)
                    TextField("first name", text: $center)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
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
                    Text("Already Have Account?")
                        .offset(x: -27, y: 330)
                        .font(Font.custom("Oswald-Regular", size: 16))
                        .foregroundColor(Color("white"))
                    
                }
                Circle()
                    .fill(Color("orange"))
                    .frame(width: (screenSize.height)*2/10, height: (screenSize.height)*2/10)
                    .offset(x: -200, y: 355)
                Circle()
                    .fill(Color("yellow"))
                    .frame(width: (screenSize.height)*2/10, height: (screenSize.height)*2/10)
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
