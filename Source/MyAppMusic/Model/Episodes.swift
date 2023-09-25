//
//  Episodes.swift
//  MyAppMusic
//
//  Created by etudiant on 11/05/2023.
//

import Foundation
struct Episode: Identifiable {
    var id = UUID()
    var date: String
    var titre: String
    var description: String
    var heure : String
}

