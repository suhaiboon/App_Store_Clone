//
//  HorizontalScrollPage.swift
//  AppStoreClone
//
//  Created by Suhaib AlMutawakel on 5/10/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import Foundation
import SwiftUI

struct HorizontalScrollView : View {
    var items : [GameData]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                ForEach(0..<3) {
                    row in
                    HStack{
                        ForEach(0 ..< self.items.count / 3){
                            column in
                            
                            GameCell(data: self.items[self.determineCurrentCell (row: row, column: column)])
                        }
                    }
                }
            }
        }
        
        
    }
    
    func determineCurrentCell (row: Int, column: Int) -> Int {
        return ((((column + 1) * 3) - row ) - 1)
    }
}

struct GameCell : View {
    var data : GameData
    var body:some View {
        HStack{
            Image(data.image).resizable().frame(width: 40, height: 40, alignment: .leading).cornerRadius(10)
            VStack (alignment: .leading){
                Text(data.title).bold()
                Text(data.subtitle).font(Font.subheadline)
                
            }
        }.padding().frame(width: 300,alignment: .leading)
    }
}

struct HorizontalScrollPage_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(items: GameStorage().thisWeeksGame)
    }
}
