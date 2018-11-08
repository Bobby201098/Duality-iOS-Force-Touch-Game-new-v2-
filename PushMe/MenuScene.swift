//
//  MenuScene.swift
//  PushMe
//
//  Created by Gheorghe Ionut on 9/6/17.
//  Copyright © 2017 BD Serv. All rights reserved.
//

import UIKit
import SpriteKit
class MenuScene: SKScene {
    var playbutton = SKSpriteNode()
    let playbuttonTex = SKTexture(imageNamed: "play")
    let logoSprite = SKSpriteNode(imageNamed: "logosprite")
    override func sceneDidLoad() {
        logoSprite.size = CGSize(width: 1360, height: 1240)
        logoSprite.position = CGPoint(x: size.width / 2, y: size.height / 2 + 500)
        addChild(logoSprite)
    }
    override func didMove(to view: SKView) {
        /*let burstPath = Bundle.main.path(forResource: "SnowParticle", ofType: "sks")
        let burstNode = NSKeyedUnarchiver.unarchiveObject(withFile: burstPath!) as! SKEmitterNode
        burstNode.position = CGPoint(x: self.size.width/2, y: self.size.height)
        burstNode.name = "SnowParticle"
        burstNode.targetNode = self.scene
        self.addChild(burstNode)*/
        playbutton = SKSpriteNode(texture: playbuttonTex)
        playbutton.size = CGSize(width: 768, height: 1024)
        playbutton.position = CGPoint(x: frame.midX, y: frame.midY)
        self.addChild(playbutton)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            if node == playbutton{
                if let view = view{
                    let transition: SKTransition = SKTransition.fade(withDuration: 1)
                    let scene:SKScene = GameScene(size: self.size)
                    self.view?.presentScene(scene, transition: transition)
                }
            }
        }
    }
    

}
