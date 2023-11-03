//
//  movieDetails.swift
//  Davaleba18
//
//  Created by Lika Nozadze on 11/3/23.
//

import UIKit

struct MovieDetails {
    let image: UIImage?
    let description: String
    let Certificate: String
    let Runtime: String
    let Release: Int
    let Genre: String
    let Director: String
    let Cast: String

    static let movieDetails = [
        MovieDetails(
            image: UIImage(named: "image1.1"),
            description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
            Certificate: "16+" ,
            Runtime: "2h 56m",
            Release: 2022 ,
            Genre: "Action, Crime, Drama",
            Director: "Matt Reevesing",
            Cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaardg"
            
        )

    ]
}

