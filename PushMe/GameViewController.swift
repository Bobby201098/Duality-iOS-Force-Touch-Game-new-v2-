//
//  GameViewController.swift
//  PushMe
//
//  Created by Gheorghe Ionut on 8/30/17.
//  Copyright © 2017 BD SERV. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class GameViewController: UIViewController {

    var backgroundMusicPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = MenuScene(fileNamed:"MenuScene") {
            
            let bgMusicURL = Bundle.main.url(forResource: "bgMusic", withExtension: "mp3")
            do {
                try backgroundMusicPlayer = AVAudioPlayer(contentsOf: bgMusicURL!)
            }catch {
                print("cant play music")
            }
            
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
          
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
 
            skView.ignoresSiblingOrder = true
            
            scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
        }
    }

    override var shouldAutorotate : Bool {
        return true
    }

    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden : Bool {
        return true
    }
}
