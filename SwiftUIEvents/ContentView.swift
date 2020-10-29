//
//  ContentView.swift
//  SwiftUIEvents
//
//  Created by Miyo Alpízar on 28/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoginViewPresented = false
    
    var body: some View {
        BackgroundVStack {
            VStack {
                Text("With this awesome app you could save your favorite Events")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                Spacer()
                
                Button(action: { print("Click") })
                {
                    Text("Create Account")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .cornerRadius(4.0)
                        .foregroundColor(.white)
                        .background(Color.black)
                }.padding(.horizontal, 30)
                
                Button(action: {
                    self.isLoginViewPresented.toggle()
                })
                {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .cornerRadius(4.0)
                        .foregroundColor(.black)
                }.padding(.horizontal, 30)
                
            }.fullScreenCover(isPresented: $isLoginViewPresented, content: {
                LoginView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
