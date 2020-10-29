//
//  BackgroundVStack.swift
//  SwiftUIEvents
//
//  Created by Miyo Alpízar on 28/10/20.
//

import SwiftUI

struct BackgroundVStack<Content: View>: View {
    let content: () -> Content
    
    var body: some View {
        Color.accent
            .ignoresSafeArea()
            .overlay(
                ZStack {
                    
                    Triangle()
                        .fill(Color.black)
                        .opacity(0.05)
                        .frame(width: 240, height: 280)
                        .rotationEffect(.degrees(23))
                        .offset(x: 120, y: 80)
                    
                    Triangle()
                        .fill(Color.black)
                        .opacity(0.04)
                        .frame(width: 120, height: 140)
                        .rotationEffect(.degrees(-45))
                        .offset(x: -120, y: 80)
                    
                    Triangle()
                        .fill(Color.black)
                        .opacity(0.04)
                        .frame(width: 120, height: 140)
                        .rotationEffect(.degrees(21))
                        .offset(x: -100, y: -30)
                    
                    Triangle()
                        .fill(Color.black)
                        .opacity(0.1)
                        .frame(width: 240, height: 280)
                        .rotationEffect(.degrees(-25))
                        .offset(x: -120, y: 360)
                    
                    VStack {
                        content()
                    }
                    
                }
            )
    }
}

struct BackgroundVStack_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundVStack { Text("Test") }
    }
}
