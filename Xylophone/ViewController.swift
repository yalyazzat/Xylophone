//
//  ViewController.swift
//  Xylophone
//
//  Created by Ляззат Аманбаева on 22.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer?
    
    
    func playSound(note: String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error: Could not load sound file.")
        }
    }


    @IBAction func cNote(_ sender: Any) {
        playSound(note: "c")
    }
    
    
    @IBAction func dNote(_ sender: Any) {
        playSound(note: "d")
    }
    
    @IBAction func eNote(_ sender: Any) {
        playSound(note: "e")
    }
    
    
    @IBAction func fNote(_ sender: Any) {
        playSound(note: "f")
    }
    
    
    @IBAction func gNote(_ sender: Any) {
        playSound(note: "g")
    }
    
    
    @IBAction func aNote(_ sender: Any) {
        playSound(note: "a")
    }
    
    
    @IBAction func bNote(_ sender: Any) {
        playSound(note: "b")
    }
    func animateButtonPress(_ button: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
            button.alpha = 0.5
        }) { _ in
            button.alpha = 1.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = AVAudioSession.sharedInstance()
            do {
                try session.setCategory(.playback, mode: .default, options: [.mixWithOthers])
                try session.setActive(true)
            } catch {
                print("Failed to set up the audio session.")
            }
        // Do any additional setup after loading the view.
    }


}

