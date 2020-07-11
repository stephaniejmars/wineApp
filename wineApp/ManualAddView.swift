//
//  ManualAddView.swift
//  wineApp
//
//  Created by stephanie on 7/9/20.
//  Copyright © 2020 stephanie. All rights reserved.
//

import SwiftUI

struct ManualAddView: View {
        let blueViolet = Color(red: 90/255, green:7/255, blue: 173/255)
        let darkPurple = Color(red: 67/255, green:64/255, blue: 83/255)
        
        struct HeaderStyle: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .foregroundColor(Color.white)
                    .modifier(Shadow())
                    .font(Font.custom("Trebuchet MS", size: 35))
            }
        }
        
        struct LinkStyle: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .foregroundColor(Color.white)
                    .modifier(Shadow())
                    .font(Font.custom("Trebuchet MS", size: 35))
            }
        }
       struct Shadow: ViewModifier {
            func body(content: Content) -> some View {
                return content
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
            }
        }
        
        var body: some View {
            ZStack {
                Color(red: 67/255, green:64/255, blue: 83/255)
                .edgesIgnoringSafeArea(.all)
            
            
                VStack {
                    Spacer()
                    Text("Manually Add A Wine").modifier(HeaderStyle())
                    Spacer()
                
                }
            }
        }
    }

struct ManualAddView_Previews: PreviewProvider {
    static var previews: some View {
        ManualAddView()
    }
}
