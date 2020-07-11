//
//  ScannedWineView.swift
//  wineApp
//
//  Created by stephanie on 7/9/20.
//  Copyright © 2020 stephanie. All rights reserved.
//

import SwiftUI

struct ScannedWineView: View {
   let blueViolet = Color(red: 90/255, green:7/255, blue: 173/255)
        let darkPurple = Color(red: 67/255, green:64/255, blue: 83/255)
        let gold = Color(red: 135/255, green:133/255, blue: 92/255)
        let green = Color(red: 7/255, green: 173/255, blue: 60/255)
        let greenFade = Color(red: 103/255, green: 161/255, blue: 121/255)
        
        //********** ATTEMPTS AT SYMBOL CONFIGURATION ************
    //    let symbolConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .black, scale: .large)
    //    let heartSymbol = UIImage(systemName: "suit.heart.fill")
    //    , withConfiguration: symbolConfig)
        
        // *******************************************************
        
        struct HeaderStyle: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .foregroundColor(Color.white)
                    .modifier(Shadow())
                    .font(Font.custom("Trebuchet MS", size: 35))
            }
        }
     
        struct IconStyle: ViewModifier {
             func body(content: Content) -> some View {
                 return content
                     .foregroundColor(Color.white)
                     .modifier(Shadow())
                     .font(Font.custom("Trebuchet MS", size: 65))
             }
         }
        
        struct LinkStyle: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .foregroundColor(Color.white)
                    .modifier(Shadow())
                    .font(Font.custom("Trebuchet MS", size: 25))
            }
        }
       struct Shadow: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
            }
        }
        
        struct GreenGradientBackgroundStyle: ButtonStyle {
         
            func makeBody(configuration: Self.Configuration) -> some View {
                configuration.label
                    .frame(width: 100)
                    .frame(height: 100)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 7/255, green: 173/255, blue: 60/255), Color(red: 103/255, green: 161/255, blue: 121/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
            }
        }
        
        struct RedGradientBackgroundStyle: ButtonStyle {
         
            func makeBody(configuration: Self.Configuration) -> some View {
                configuration.label
                    .frame(width: 100)
                    .frame(height: 100)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 173/255, green: 7/255, blue: 7/255), Color(red: 161/255, green: 103/255, blue: 103/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
            }
        }
        
        var body: some View {
            ZStack {
                Color(red: 67/255, green:64/255, blue: 83/255)
                .edgesIgnoringSafeArea(.all)
            
            
                VStack {
    //                Spacer()
                    Text("Scan to add wine").modifier(HeaderStyle())
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "suit.heart.fill").modifier(IconStyle())
    //                            .font(.title)
    //                            Text("🤍").modifier(LinkStyle())
    //                            Text("Like").modifier(LinkStyle())
                            }
                        }
                        .buttonStyle(GreenGradientBackgroundStyle())
                        Spacer()
                        Button(action: {}) {
                           HStack {
    //                          Image(systemName: "xmark.circle.fill")
                                Image(systemName: "xmark").modifier(IconStyle())
    //                                .font(.title)
    //                            Text("🚫").modifier(LinkStyle())
    //                            Text("Dislike").modifier(LinkStyle())
                            }
                        }
                        .buttonStyle(RedGradientBackgroundStyle())
                        
                        Spacer()
                    }
                    Spacer()
                Button(action: {}) {
                   HStack {
                       Image(systemName: "arrowshape.turn.up.left.fill")
                            .font(.title)
                       Text("Cancel").modifier(LinkStyle())
                   }
               }
                Spacer()
       
                }
            }
            .accentColor(Color.white)
        }
    }

struct ScannedWineView_Previews: PreviewProvider {
    static var previews: some View {
        ScannedWineView()
    }
}
