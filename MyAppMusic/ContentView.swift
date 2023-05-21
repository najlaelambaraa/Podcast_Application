//
//  ContentView.swift
//  MyAppMusic
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
    TabView {
                Ecouter()
                    .tabItem {
                        Image(systemName: "play.circle")
                            .foregroundColor(Color("Color"))
                        Text("Ecouter")
                            .foregroundColor(Color.pink)
                    }
        Explore()
                    
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                            .foregroundColor(Color("Color"))
                        Text("Explore")
                            .foregroundColor(Color.pink)
                        
                    }
        
        Podcasts()
                    .tabItem {
                        Image(systemName: "square.stack.fill")
                            .foregroundColor(Color("Color"))
                        Text("Bibliothéque")
                            .foregroundColor(Color.pink)
            }
                    Recherche()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("Color"))
                        Text("Recherche")
                            .foregroundColor(Color.pink)
                    }
        
    }.tint(.purple)
   
    
    
}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
