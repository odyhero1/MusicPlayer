
//
//  ViewController.swift
//  PitbullApp
//
//  Created by Odysseas Herodotou on 23/07/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate , UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = PartyRock (imageURL: "http://www.warnerbrosrecords.com/sites/g/files/g2000003386/f/201509/TryMe-FINAL.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xoWEQLpBoE0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Swalla")
        let p2 = PartyRock (imageURL: "https://i.ytimg.com/vi/rdXZ0kkVk4k/maxresdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/13CdKgFiiXQ?rel=\0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Strip That Down")
        let p3 = PartyRock (imageURL: "https://i.ytimg.com/vi/ewLzsi1jVJU/maxresdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ewLzsi1jVJU?rel=\"0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sexy Body Pitbull")
        let p4 = PartyRock (imageURL: "https://vignette4.wikia.nocookie.net/karlacamilacabello/images/e/ed/Fast-8-tracklist.jpeg/revision/latest?cb=20170310021400", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UWLr2va3hu0?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hey Ma")
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
//        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xoWEQLpBoE0\" frameborder=\"0\" allowfullscreen></iframe>"
       tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{

            let partyRock =  partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }else{

        return UITableViewCell()
    }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination  as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
        }
    }

}

}
