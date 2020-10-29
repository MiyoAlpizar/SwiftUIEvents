//
//  LoginView.swift
//  SwiftUIEvents
//
//  Created by Miyo Alpízar on 28/10/20.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var email: String = ""
    @State var password: String = ""
    
    public struct CustomTextFieldStyle : TextFieldStyle {
            public func _body(configuration: TextField<Self._Label>) -> some View {
                configuration
                    .font(.subheadline) // set the inner Text Field Font
                    .padding(10) // Set the inner Text Field Padding
                    //Give it some style
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.accent.opacity(0.5), lineWidth: 3))
            }
        }
    
    var body: some View {
        BackgroundVStack {
            VStack {
                Text("Login to Events")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                    
                TextField("E-mail", text: $email)
                    .textFieldStyle(CustomTextFieldStyle())
                    .padding(.horizontal, 20)
                    .keyboardType(.emailAddress)
                    .foregroundColor(.black)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(CustomTextFieldStyle())
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .cornerRadius(4.0)
                        .foregroundColor(.white)
                        .background(Color.black)
                }).padding()
                    
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Cancel")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .cornerRadius(4.0)
                        .foregroundColor(.black)
                        .background(Color.clear)
                }).padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
