//
//  TodayPage.swift
//  AppStoreClone
//
//  Created by Suhaib AlMutawakel on 5/10/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import Foundation
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                HStack{
                    VStack(alignment: .leading){
                        Text("Wednesday, May 10").foregroundColor(.gray).bold().font(Font.footnote)
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("profile1").resizable().frame(width:50, height: 50, alignment: .trailing)
                    })
                    
                }.padding([.leading,.trailing,.top])
                
                //Add the view to the stack
                HighlightView(catagory: "Vacation", title: "Explore the Universe", message: "Be Bold and Travel The World ").frame(height: 500, alignment: .leading)
                
                HighlightView(catagory: "Vacation", title: "Explore the Universe", message: "Be Bold and Travel The World ").frame(height: 500, alignment: .leading)
                
                HighlightView(catagory: "Vacation", title: "Explore the Universe", message: "Be Bold and Travel The World ").frame(height: 500, alignment: .leading)
            }
        }
        
    }
    func loadProfile(){
        
    }
}

struct HighlightView: View {
    var catagory : String
    var title: String
    var message: String
    var body: some View {
        VStack{
            ZStack {
                Image("globe").resizable()
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading){
                    Text(catagory).foregroundColor(Color.white.opacity(0.5)).bold()
                    Text(title).foregroundColor(.white).font(Font.title).bold()
                    Spacer()
                    Text(message).foregroundColor(.white)
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 20)
        
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}

