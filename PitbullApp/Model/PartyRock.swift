//
//  ParrtyRock.swift
//  PitbullApp
//
//  Created by Odysseas Herodotou on 23/07/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import Foundation

class PartyRock {

    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitile : String!

    var imageURL: String! {
        return _imageURL
    }
    var videoURL: String {
        return _videoURL
    }

    var videoTitle: String {
        return _videoTitile
    }
    init(imageURL: String, videoUrl : String , videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoUrl
        _videoTitile = videoTitle
    }
}
