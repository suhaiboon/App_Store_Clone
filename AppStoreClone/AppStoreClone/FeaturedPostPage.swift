//
//  FeaturedPostPage.swift
//  AppStoreClone
//
//  Created by Suhaib AlMutawakel on 5/10/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import Foundation
import SwiftUI

struct FeaturedPostView : View {
    var captionTitle : String
    var titleText : String
    var subtitleText : String
    var image : String
    var body : some View {
        VStack(alignment: .leading) {
            Text("Updates").font(.caption).foregroundColor(.blue)
            Text(titleText)
            Text(subtitleText).font(.subheadline).foregroundColor(.gray)
            Image(image).resizable().frame(width:(UIApplication.shared.windows.first?.frame.width ?? 0) - 20, height: 250, alignment: .center).cornerRadius(5)
            }.frame(minWidth: 0, maxWidth: .infinity,alignment: .leading).padding(10)
        
    }
}

struct FeaturedPost_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPostView(captionTitle: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour from Paris", image: "sims")
    }
}
