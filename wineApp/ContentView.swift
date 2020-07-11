//
//  ContentView.swift
//  wineApp
//
//  Created by stephanie on 7/6/20.
//  Copyright © 2020 stephanie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let blueViolet = Color(red: 90/255, green:7/255, blue: 173/255)
    let darkPurple = Color(red: 67/255, green:64/255, blue: 83/255)
    let gold = Color(red: 196/255, green: 192/255, blue: 110/255)
    
    struct HeaderStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.white)
                .modifier(Shadow())
                .font(Font.custom("Trebuchet MS Bold", size: 40))
        }
    }
    
    struct LinkStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.white)
                .modifier(Shadow())
                .font(Font.custom("Trebuchet MS", size: 30))
        }
    }
   struct Shadow: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .shadow(color: Color.black, radius: 5, x: 2, y: 2)
        }
    }
    
    struct HomeButtonLeftStyle: ButtonStyle {
     
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(width: 400)
                .frame(height: 60)
                .padding()
                .foregroundColor(.white)
                
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0/255, green: 127/255, blue: 151/255), Color(red: 25/255, green: 168/255, blue: 200/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                .background(Color(red: 0/255, green: 127/255, blue: 151/255))
                .cornerRadius(40)
                .padding(.trailing, 110)
                
        }
    }
    
    struct HomeButtonRightStyle: ButtonStyle {
     
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(width: 400)
                .frame(height: 60)
                .padding()
                .foregroundColor(.white)
                
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 25/255, green: 168/255, blue: 200/255), Color(red: 0/255, green: 127/255, blue: 151/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                .background(Color(red: 0/255, green: 127/255, blue: 151/255))
                .cornerRadius(40)
                .padding(.leading, 110)
                
        }
    }
    
    var body: some View {
        ZStack {
            Color(red: 67/255, green:64/255, blue: 83/255)
            .edgesIgnoringSafeArea(.all)
        
        
            VStack {
                
                Text("wineApp").modifier(HeaderStyle())
                Spacer()
            NavigationLink(destination: ScanView()) {
                HStack {
                    
                    Text("Add Wine").modifier(LinkStyle())
                }
            }
                .buttonStyle(HomeButtonLeftStyle())
                Spacer()
                NavigationLink(destination: AllWinesView()) {
                  HStack {
                      Text("All Wines").modifier(LinkStyle())
                  }
              }
                .buttonStyle(HomeButtonRightStyle())
                Spacer()
            NavigationLink(destination: MyFavsView()) {
                HStack {
                    Text("My Favs").modifier(LinkStyle())
                }
            }
                .buttonStyle(HomeButtonLeftStyle())
                Spacer()
   
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
