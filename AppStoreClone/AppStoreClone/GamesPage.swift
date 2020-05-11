//
//  GamesPage.swift
//  AppStoreClone
//
//  Created by Suhaib AlMutawakel on 5/10/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import Foundation
import SwiftUI

struct GamesView: View {
    var gameStorage = GameStorage()
    var numOfRows = 3
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("profile1").resizable().frame(width:50, height: 50, alignment: .trailing)
                    })
                    
                }.padding([.leading,.trailing,.top])
                Divider()
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        FeaturedPostView(captionTitle: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour from Paris", image: "sims")
                        FeaturedPostView(captionTitle: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour from Paris", image: "sims")
                        FeaturedPostView(captionTitle: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour from Paris", image: "sims")
                        FeaturedPostView(captionTitle: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour from Paris", image: "sims")
                    }
                    
                })
                Divider()
                HorizontalScrollView(items: self.gameStorage.thisWeeksGame)
                
            }
        }
    }
    
    func loadProfile(){
        
    }
}



struct GameStorage {
    var thisWeeksGame = [GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile"),GameData(id: UUID(), title: "Archetapp", subtitle: "The best Dang app out there ", image: "profile")]
}
struct GameData : Identifiable {
    var id = UUID ()
    var title = String()
    var subtitle = String ()
    var image = String ()
}
struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}

