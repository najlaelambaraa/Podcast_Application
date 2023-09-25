//
//  Stub.swift
//  MyAppMusic
//
//  Created by etudiant on 11/05/2023.
//

import Foundation
class Stub {
    func getEpisodes(completion: @escaping ([Episode]?, Error?) -> Void) {
        // Ceci est un stub, remplacer avec une implémentation réelle
        
        let episode1 = Episode(date: "MARDI", titre: "Comment se libérer de la voiture individuelle ?", description: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****",heure: "1H10min")
        let episode2 = Episode(date: "MERCREDI", titre: "Comment se libérer de la voiture individuelle ?", description: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****",heure: "2H15min")
        let episode3 = Episode(date: "JEUDI", titre: "Comment se libérer de la voiture individuelle ?", description: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****",heure: "3H15min")
        let episode4 = Episode(date: "VENDREDI", titre: "Comment se libérer de la voiture individuelle ?", description: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****",heure: "1H10min")
        let episodes = [episode1, episode2,episode3,episode4]
        completion(episodes, nil)
    }
}

