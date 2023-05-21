//
//  barreLecture.swift
//  MyAppMusic
//
//  Created by etudiant on 17/05/2023.
//

import SwiftUI

struct barreLecture: View {
    @State private var isPlaying = false
    var body: some View {
        
        ZStack{
            
            HStack {
                
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("Chaleur Humaine")
                        .font(.title3)
                    Text("29 avril 2023")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                }
                
                
                
                    Spacer()
                    
                    Button(action: {
                        // Action du bouton Play/Pause
                        self.isPlaying.toggle()
                    }) {
                        Image(systemName: self.isPlaying ? "pause.fill" : "play.fill")
                            .font(.title)
                            .padding(.horizontal)
                    }
                    
                    Button(action: {
                        // Action du bouton de passe 30s
                    }) {
                        Image(systemName: "goforward.30")
                            .font(.title)
                    }
                    .padding(.trailing)
                    
                    
                
            }
         
        
    
        }
        
    }
}

struct barreLecture_Previews: PreviewProvider {
    static var previews: some View {
        barreLecture()
        barreLecture().preferredColorScheme(ColorScheme.dark)
            
    }
}
