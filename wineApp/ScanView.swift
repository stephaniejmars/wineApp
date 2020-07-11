//
//  ScanView.swift
//  wineApp
//
//  Created by stephanie on 7/9/20.
//  Copyright © 2020 stephanie. All rights reserved.
//
import CodeScanner
import SwiftUI

struct ScanView: View {
    
    let blueViolet = Color(red: 90/255, green:7/255, blue: 173/255)
    let darkPurple = Color(red: 67/255, green:64/255, blue: 83/255)
    let gold = Color(red: 135/255, green:133/255, blue: 92/255)
    let green = Color(red: 7/255, green: 173/255, blue: 60/255)
    let greenFade = Color(red: 103/255, green: 161/255, blue: 121/255)
    
    
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
    
    //*************************************************
    @State private var isShowingScanner = false
    
    func handleScan(result: Result<String, CodeScannerView.ScanError>) {
        self.isShowingScanner = false
        
        switch result {
        case .success(let code):
            let details = code.components(separatedBy: "\n")
            
//
//            wine.name = details[0]
//            self.prospects.wines.append(wine)
        case .failure(let error):
            print("Scanning failed")
        }
        
    }

    
    //****************************************************
    
    var body: some View {
        ZStack {
            Color(red: 67/255, green:64/255, blue: 83/255)
            .edgesIgnoringSafeArea(.all)
        
            VStack {
                Text("Scan to add wine").modifier(HeaderStyle())
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                      
            }
            .accentColor(Color.white)
        
        }
//        .navigationBarTitle("Hello")
//  *****************************************
        .navigationBarItems(trailing: Button(action: {
            self.isShowingScanner = true
        }) {
            Image(systemName: "qrcode.viewfinder")
            Text("Scan")
        })
            .sheet(isPresented: $isShowingScanner) {
                CodeScannerView(codeTypes: [.qr], simulatedData: "Stephanie", completion: self.handleScan)
        }
//  ******************************************
    }
}
struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
