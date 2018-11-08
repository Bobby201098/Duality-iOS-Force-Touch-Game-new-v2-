//
//  Coin.swift
//  PushMe
//
//  Created by Gheorghe Ionut on 9/9/17.
//  Copyright © 2017 BD Serv. All rights reserved.
//

import UIKit
import SpriteKit
class Coin: SKSpriteNode {
   var initialsize = CGSize(width: 400, height: 400)
    var goldtexture = SKTexture(imageNamed:"gold-coin")
    var value = 1
    init(){
        super.init(texture: goldtexture, color: .clear, size: initialsize)
        self.physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
        self.physicsBody?.affectedByGravity = false
    }
    
    func onTap() {
      }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
