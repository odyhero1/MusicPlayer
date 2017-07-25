//
//  VideoVC.swift
//  PitbullApp
//
//  Created by Odysseas Herodotou on 23/07/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var titleLbl: UILabel!
    
    
        private var _PartyRock: PartyRock!
    var partyRock: PartyRock {
        get {
            return _PartyRock
        }set{
             _PartyRock = newValue
        }
    }

    override func  viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }


}
