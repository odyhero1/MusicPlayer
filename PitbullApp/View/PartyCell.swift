//
//  PartyCell.swift
//  PitbullApp
//
//  Created by Odysseas Herodotou on 23/07/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func updateUI(partyRock: PartyRock) {
         videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
         do {
             let data = try Data(contentsOf: url)
                 DispatchQueue.global().sync {
                    self.videoPreviewImage.image =
                         UIImage(data: data)

                }

            }catch {


    }


}
}

}
