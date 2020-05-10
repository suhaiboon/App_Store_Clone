//
//  TabBarPage.swift
//  AppStoreClone
//
//  Created by Suhaib AlMutawakel on 5/10/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    
    @State var selected : Int = 0
    var body: some View {
        TabView(selection: $selected){
            TodayView().tabItem{
                Text("Today")
            }
            GamesView().tabItem{
                Text("Games")
            }
            AppsView().tabItem{
                Text("Apps")
            }
            ArcadeView().tabItem{
                Text("Arcades")
            }
            SearchView().tabItem{
                Text("Search")
            }
        }
       
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

