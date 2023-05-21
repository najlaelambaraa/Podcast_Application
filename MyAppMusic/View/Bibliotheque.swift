//
//  Description.swift
//  MyAppMusic
//
//  Created by etudiant on 12/05/2023.
//

import SwiftUI
import Combine
 

struct Bibliotheque: View {
    @State var isClicked : Bool = true
    @State private var showMore = false
    @State private var isPlaying = false
    @State private var color: Color = .blue
    let maxDescriptionLength = 100
    let podcast: Podcast
    let description = "Comment faire face au défi climatique ? Tous les mardis, Nabil Wakim et la rédaction du Monde invitent des experts pour comprendre les enjeux et trouver des solutions"
    
    var body: some View {
        NavigationStack{
            
            NavigationView {
                
                
                ZStack{
                    color
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        VStack{
                            
                            ScrollView {
                                
                                VStack (spacing: 10){
                                    
                                    Image(podcast.imageName ?? "Image")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200,height: 200)
                                        .clipShape(RoundedRectangle(cornerRadius: 11))
                                        .onReceive(Just(UIImage(named: podcast.imageName ?? "Image"))) { uiImage in
                                            if let backColor = uiImage?.BackColor {
                                                self.color = Color(backColor)
                                            }
                                        }
                                    
                                    VStack{
                                        Text(podcast.title ?? "Chaleur Humaine")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        Text("Le Monde")
                                            .font(.subheadline)
                                            .foregroundColor(Color.white)
                                    }
                                    
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.white)
                                            .clipShape(Circle())
                                            .overlay {
                                                Circle().stroke(.pink, lineWidth: 4)
                                            }
                                        Text("SER Podcast")
                                            .font(.headline)
                                            .foregroundColor(Color.white)
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(Color.white)
                                            .padding(2)
                                    }
                                    
                                    Button(action: {
                                        isClicked.toggle()
                                    }) {
                                        
                                        HStack{
                                            Image(systemName:  isClicked ? "play.fill" : "pause.fill"  )
                                            Text("Dernier épisode")
                                                .font(.title3)
                                                .padding(.vertical, 12)
                                                .padding(.horizontal, 37.0)
                                        }
                                        .background(Color.white)
                                        .cornerRadius(8) // Coins du bouton
                                        .shadow(radius: 4)
                                        .padding(3)
                                        .foregroundColor(.black)
                                    }
                                    
                                    VStack {
                                        
                                        Text(showMore ? description : description.prefix(maxDescriptionLength) + "...")
                                            .foregroundColor(.white)
                                        if description.count > maxDescriptionLength {
                                            HStack{
                                                Spacer()
                                                Button(action: {
                                                    showMore.toggle()
                                                }, label: {
                                                    Text(showMore ? "MOINS" : "PLUS")
                                                        .foregroundColor(Color.white)
                                                })
                                            }
                                        }
                                    }
                                    
                                    .padding(4)
                                    
                                    HStack{
                                        
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color("Color"))
                                        
                                        Text("4,8 (457).")
                                            .font(.subheadline)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Actualités .")
                                            .font(.subheadline)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Chaque semaine .")
                                            .font(.subheadline)
                                            .foregroundColor(Color.white)
                                    }
                                    
                                    Divider()
                                    List()
                                        .background()
                                    
                                    
                                    
                                    
                                    
                                }
                                
                            }

                            
                        }
                        
                        
                    }
                }
                
            }
            .navigationBarItems(
                leading:
                    Text(podcast.title)
                    .foregroundColor(Color.white),
                trailing:
                    HStack {
                        Button(action: {
                            // Code de l'action pour le premier bouton de droite
                        }) {
                            Image(systemName: "square.and.arrow.down")
                                .foregroundColor(Color("Color"))
                        }
                        
                        Button(action: {
                            // Code de l'action pour le deuxième bouton de droite
                        }) {
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(Color("Color"))
                        }
                    }
            )
            Divider()
            barreLecture()
                
            
                
        }
    }
}

struct Bibliotheque_Previews: PreviewProvider {
        static var previews: some View {
            Bibliotheque(podcast: StubPodcast().podcasts.first!)
 Bibliotheque(podcast: StubPodcast().podcasts.first!).environment(\.colorScheme, .dark)
        }
    }
extension UIImage {
    var BackColor: UIColor? {
        guard let inputImage = CIImage(image: self) else { return nil }
        let extent = inputImage.extent
        let context = CIContext(options: nil)
        let ciFilter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: inputImage, kCIInputExtentKey: CIVector(cgRect: extent)])!
        var bitmap = [UInt8](repeating: 0, count: 4)
        context.render(ciFilter.outputImage!, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return UIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255, alpha: 1.0)
           

    }
}

