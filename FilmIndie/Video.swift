//
//  Video.swift
//  FilmIndie
//
//  Created by Dewi Salma Salsabila on 28/03/19.
//  Copyright © 2019 claudia kenyta. All rights reserved.
//
//ANGGAP AJA INI DATABASE NYA

import Foundation
import UIKit

class Video {
    var image: UIImage
    var title: String
    var director: String
    var genre: String
    var synopsis: String
    var duration: String
    var year: String
    var location: String
    var poster: UIImage
    var totvote: Int
    var publisher: String
    var publishedDate: String
    var screeningDate: String
    var vote: Bool
    
    
    init(image: UIImage, title: String, director: String, genre: String, synopsis: String, duration: String, year: String, location: String, poster: UIImage, totvote: Int, publisher: String, publishedDate: String, screeningDate: String, vote: Bool){
        self.image=image
        self.title=title
        self.director=director
        self.genre=genre
        self.synopsis=synopsis
        self.duration=duration
        self.year=year
        self.location=location
        self.poster=poster
        self.totvote=totvote
        self.publisher=publisher
        self.publishedDate=publishedDate
        self.screeningDate=screeningDate
        self.vote=vote
    }
}
