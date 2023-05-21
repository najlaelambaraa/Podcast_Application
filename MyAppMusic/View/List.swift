import SwiftUI

struct List: View {
    @State var episodes: [Episode] = []
    
    let gridLayout = [
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        
        ZStack{
            ScrollView {
                
                VStack(alignment: .leading){
                    Spacer()
                    HStack{
                        
                        Text("Episodes")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                            .padding(.leading, 15.0)
                        
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.pink)
                        
                        Spacer()
                        Text("Tout Voir")
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                            .padding(.trailing, 22.0)
                        
                    }
                    Divider()
                    
                    LazyVGrid(columns: gridLayout, spacing: 16) {
                        ForEach(episodes) { episode in
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
                            .padding()
                            Divider()
                            
                            
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
                
            }
           
                
               
            

            
        }
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
        List().preferredColorScheme(.dark)
    }
}

