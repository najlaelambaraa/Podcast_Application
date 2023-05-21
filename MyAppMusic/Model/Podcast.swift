//
//  Podcast.swift
//  MyAppMusic
//
//  Created by etudiant on 16/05/2023.
//

import Foundation
public struct Podcast: Identifiable {
    public let id = UUID()
   public  let imageName: String
   public let title: String
   public let description: String
}
