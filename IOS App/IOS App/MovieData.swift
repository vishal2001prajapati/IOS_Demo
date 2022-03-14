//
//  MovieData.swift
//  IOS App
//
//  Created by Vishal Prajapati on 17/03/22.
//

import Foundation
class MovieData {
    
    //MARK: - Variables
    var movieName: String
    var rating: Float
    var moviePhoto: String
    
    //MARK: - Initialization
    init(mName: String, mRating: Float,mPhoto: String) {
        movieName = mName
        rating = mRating
        moviePhoto = mPhoto
    }
}
