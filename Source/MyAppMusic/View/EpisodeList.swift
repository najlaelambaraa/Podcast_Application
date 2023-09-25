//
//  EpisodeList.swift
//  MyAppMusic
//
//  Created by etudiant on 12/05/2023.
//

import SwiftUI

struct EpisodeList: View {
    @State var episodes: [Episode] = []
    @State private var showList = false

    
    var body: some View {
        
        VStack(alignment: .leading){
            
                HStack{
                    
                    Text("Episodes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.leading, 15.0)
                    
                    
                    Image(systemName: showList ? "chevron.up" : "chevron.down")
                        .foregroundColor(Color.pink)
                        .onTapGesture {ale()
                        }
                    Spacer()
                    Text("Tout Voir")
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.trailing, 22.0)
   
                }
                Divider()
            

            VStack{
                if showList{
                    List(episodes) { episode in
                        VStack(alignment: .leading) {
                            Text(episode.date)
                                .font(.subheadline)
                            .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                            Text(episode.titre)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(episode.description)
                                .fontWeight(.medium)
                                .foregroundColor(Color.gray)
                                .lineLimit(2)
                                .padding(.vertical, 0.0)
                            
                            HStack{
                                Image(systemName: "play.circle")
                                    .padding(.trailing, 2.0)
                                    .scaleEffect(1.7)
                                    .foregroundColor(Color.purple)
                                Text(episode.heure)
                                    .font(.headline)
                                    .foregroundColor(Color.purple)
                                Spacer()
                                Image(systemName: "ellipsis")
                                
                            }.padding(1.0)
                            
                        }
                    }
                    .listStyle(.plain)
                    .onAppear {
                        let stub = Stub()
                        stub.getEpisodes { (episodes, error) in
                            if let episodes = episodes {
                                self.episodes = episodes
                            }
                        }
                    }
                    
                }
                Spacer()
                
            }
            .padding()
            
        
        }
        }
}

struct EpisodeList_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeList()
    }
}
