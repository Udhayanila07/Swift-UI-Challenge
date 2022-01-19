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
                    Circle()
                        .fill(Color("yellow"))
                        .frame(width: (screenSize.height)*3/10, height: (screenSize.height)*3/10)
                        .offset(x: -180, y: -380)
                    Capsule()
                        .fill(Color("darkBlue"))
                        .frame(width: (screenSize.height)*1.5/10, height: 200)
                        .offset(x: -50, y: -460)
                    Circle()
                        .fill(Color("orange"))
                        .frame(width: (screenSize.height)*1.5/10, height: (screenSize.height)*1.5/10)
                        .offset(x: -180, y: -210)
                    Circle()
                        .fill(Color("darkBlue"))
                        .frame(width: (screenSize.height)/10, height: (screenSize.height)/10)
                        .offset(x: -100, y: -210)
                    Circle()
                        .fill(Color("skyBlue"))
                        .frame(width: (screenSize.height)*1.25/10, height: (screenSize.height)*1.25/10)
                        .offset(x: -45, y: -325)
                    Circle()
                        .fill(Color("orange"))
                        .frame(width: (screenSize.height)*1.5/10, height: (screenSize.height)*1.5/10)
                        .offset(x: -50, y: -405)
                }
                clippedCircle(color: Color("white"), circleXOffSet: 0, circleYOffSet: 0, clippedCircleXOffSet: 60, clippedCircleYOffSet: 60)
                    .offset(x: 75, y: -246)
                clippedCircle(color: Color("yellow"), circleXOffSet: 0, circleYOffSet: 0, clippedCircleXOffSet: -60, clippedCircleYOffSet: 60)
                    .offset(x: 200, y: -246)
                ZStack {
                    Circle()
                        .fill(Color("pink"))
                        .frame(width: (screenSize.height)*2.25/10, height: (screenSize.height)*2.25/10)
                        .offset(x: 120, y: -440)
                    Circle()
                        .fill(Color("skyBlue"))
                        .frame(width: (screenSize.height)*1.50/10, height: (screenSize.height)*1.50/10)
                        .offset(x: 132, y: -310)
                }
                
                ZStack {
                    Text("Welcome")
                        .offset(x: -100, y: -90)
                        .font(Font.custom("Pacifico-Regular", size: 41))
                        .foregroundColor(.white)
                    Text("Back")
                        .offset(x: -131, y: -30)
                        .font(Font.custom("Pacifico-Regular", size: 41))
                        .foregroundColor(.white)
                    TextField("name", text: $userName)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: 65)
                        .padding()
                    SecureField("name", text: $password)
                        .padding(30)
                        .font(Font.custom("Oswald-Regular", size: 25))
                        .frame(width: screenSize.width - 50, height: 52)
                        .foregroundColor(.white)
                        .background(Color("lightBlue"))
                        .cornerRadius(25)
                        .offset(x: 0, y: 145)
                    Text("Forget Password?")
                        .offset(x: 105, y: 215)
                        .font(Font.custom("Oswald-Regular", size: 16))
                        .foregroundColor(Color("white"))
                    NavigationLink(destination: Signup()) {
                    }
                    ZStack {
                        NavigationLink(destination: Signup(), isActive: $isSignupButtonTapped) {
                        }
                        Button("Signup") {
                            isSignupButtonTapped = true
                        }
                    }
                    .padding()
                    .font(Font.custom("Oswald-Regular", size: 15))
                    .foregroundColor(Color("orange"))
                    .background(Color("blue"))
                    .cornerRadius(25)
                    .offset(x: 27, y: 340)
                    Text("New User?")
                        .offset(x: -27, y: 340)
                        .font(Font.custom("Oswald-Regular", size: 15))
                        .foregroundColor(Color("white"))
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
            .previewInterfaceOrientation(.portrait)
    }
}

func getColor(for name: String) -> UIColor {
    guard let color = UIColor(named: name) else { return .white }
    return color
}
