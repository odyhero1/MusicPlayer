//
//  Confirm.swift
//  PitbullApp
//
//  Created by Odysseas Herodotou on 25/07/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit
import AVFoundation





class Confirm: UIViewController {
var btnSound: AVAudioPlayer = AVAudioPlayer()



    override func viewDidLoad(){
        super.viewDidLoad()

//
        let path = Bundle.main.path(forResource: "LemmeSmash", ofType: ".mp3")
//        let soundURL = URL(fileURLWithPath: path!)

        do {
            try btnSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            btnSound.prepareToPlay()
        } catch  {
            print(error)
        }


    }
    func playSound() {
//        if btnSound.isPlaying {
//            btnSound.stop()
//        }

        btnSound.play()
    }
    @IBAction func NoButtonPressed( sender: Any) {
     playSound()
        performSegue(withIdentifier: "Confirm", sender: uWantSumFuk())
   }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as?
//            uWantSumFuk {
//        }








}
