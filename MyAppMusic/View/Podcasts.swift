//
//  Explorer.swift
//  MyAppMusic
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct Podcasts: View {
    var body: some View {
        NavigationStack{
            VStack{
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(StubPodcast().podcasts) { podcast in
                    NavigationLink{
                        Bibliotheque(podcast: podcast)
                    } label: {
                        PodcastItemView(podcast: podcast)
                    }
                   
                }
            }
            .padding()
        } .navigationTitle("Podcasts")
            
            
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.compact.left")
                                Text("Bibliothèque")
                                    .font(.title2)
                                
                            }.foregroundColor(Color("Color"))
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "ellipsis.circle")
                                    .foregroundColor(Color("Color"))
                            }
                            
                        }
                        
                    }
                barreLecture()
                
            }
    }
}

struct PodcastItemView: View {
    let podcast: Podcast
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            Image(podcast.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
                .clipShape(RoundedRectangle(cornerRadius: 11))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(podcast.title)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                Text(podcast.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            
        }
        
        .padding(.bottom, 6.0)
        .cornerRadius(10)
        .shadow(radius: 2)
        
        
    }
    
    }
    
}

struct Podcasts_Previews: PreviewProvider {
    static var previews: some View {
        Podcasts()
        Podcasts().preferredColorScheme(.dark)
    }
}
