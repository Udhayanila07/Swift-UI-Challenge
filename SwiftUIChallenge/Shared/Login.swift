//
//  ContentView.swift
//  Shared
//
//  Created by Udhayanila Mohanraj on 15/01/22.
//

import SwiftUI

struct Login: View {
    @State private var userName: String = "Johndoe@gmail.com"
    @State private var password: String = "Johndoe@1234"
    @State private var isSignupButtonTapped: Bool = false
    var screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("blue")
                    .ignoresSafeArea()
                Group {
                    CircleView(color: "yellow", width: (screenSize.height)*3/10, height: (screenSize.height)*3/10)
                        .offset(x: -180, y: -380)
                    Capsule()
                        .fill(Color("darkBlue"))
                        .frame(width: (screenSize.height)*1.5/10, height: 200)
                        .offset(x: -50, y: -460)
                    CircleView(color: "orange", width: (screenSize.height)*1.5/10, height: (screenSize.height)*1.5/10)
                        .offset(x: -180, y: -210)
                    CircleView(color: "darkBlue", width: (screenSize.height)/10, height: (screenSize.height)/10)
                        .offset(x: -100, y: -210)
                    CircleView(color: "skyBlue", width: (screenSize.height)*1.25/10, height: (screenSize.height)*1.25/10)
                        .offset(x: -45, y: -325)
                    CircleView(color: "orange", width: (screenSize.height)*1.5/10, height: (screenSize.height)*1.5/10)
                        .offset(x: -50, y: -405)
                }
                ClippedCircleView(color: Color("white"), circleXOffSet: 0, circleYOffSet: 0, clippedCircleXOffSet: 60, clippedCircleYOffSet: 60)
                    .offset(x: 75, y: -246)
                ClippedCircleView(color: Color("yellow"), circleXOffSet: 0, circleYOffSet: 0, clippedCircleXOffSet: -60, clippedCircleYOffSet: 60)
                    .offset(x: 200, y: -246)
                ZStack {
                    CircleView(color: "pink", width: (screenSize.height)*2.25/10, height: (screenSize.height)*2.25/10)
                        .offset(x: 120, y: -440)
                    CircleView(color: "skyBlue", width: (screenSize.height)*1.50/10, height: (screenSize.height)*1.50/10)
                        .offset(x: 132, y: -310)
                }
                
                ZStack {
                    TextView(text: "Welcome", font: "Pacifico-Regular", size: 41, color: "white")
                        .offset(x: -100, y: -90)
                    TextView(text: "Back", font: "Pacifico-Regular", size: 41, color: "white")
                        .offset(x: -131, y: -30)
                    TextFieldView(text: userName, textFieldName: "User Name", width: screenSize.width - 50, padding: 30, color: "lightBlue")
                        .offset(x: 0, y: 65)
                    SecureField("name", text: $password)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 25))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: 145)
                    TextView(text: "Forget Password?", font: "Oswald-Regular", size: 16, color: "white")
                        .offset(x: 105, y: 215)
                    ZStack {
                        NavigationLink(destination: Signup(), isActive: $isSignupButtonTapped) {
                        }
                        Button("Signup") {
                            isSignupButtonTapped = true
                        }
                        .padding()
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .foregroundColor(Color("orange"))
                        .background(Color("blue"))
                        .cornerRadius(25)
                        .offset(x: 27, y: 340)
                    }
                    TextView(text: "New User?", font: "Oswald-Regular", size: 15, color: "white")
                        .offset(x: -27, y: 340)
                }
                Button("Login") {
                    print("Login")
                }
                .padding()
                .font(Font.custom("Lato-Bold", size: 20))
                .frame(width: screenSize.width - 275, height: 50)
                .foregroundColor(Color("white"))
                .background(Color("orange"))
                .cornerRadius(25)
                .offset(x: 0, y: 270)
            }
        }.navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
