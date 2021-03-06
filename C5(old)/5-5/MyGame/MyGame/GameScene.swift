//
//  GameScene.swift
//  MyGame
//
//  Created by Powen Ko on 2/11/15.
//  Copyright (c) 2015 Powen Ko. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var button1 = SKSpriteNode(imageNamed: "button1.png")
    var button2 = SKSpriteNode(imageNamed: "button1.png")
   
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "copyright 2015 PowenKo.com, All Rights Reserved.";
        myLabel.fontSize = 32;
        myLabel.position = CGPoint(x:self.frame.midX,y: 100);
        self.addChild(myLabel)
        myLabel.zPosition = 3
        
        /////////////////////////////
        let bgImage = SKSpriteNode(imageNamed: "bg.jpg")
        self.addChild(bgImage)
        bgImage.zPosition = -1
        bgImage.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        ////////////////////////////
        
        self.addChild(button1)
        button1.position = CGPoint(x: 300,y:200 );
        button1.zPosition = 1
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "About Us"
        myLabel2.fontSize = 28
        myLabel2.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel2.position = CGPoint(x: 300,y:200-12 );
        myLabel2.zPosition = 2
        self.addChild(myLabel2)
        
        self.addChild(button2)
        button2.position = CGPoint(x: 300,y:300 );
        button2.zPosition = 1
        let myLabel3 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel3.text = "Start"
        myLabel3.fontSize = 28
        myLabel3.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel3.position = CGPoint(x: 300,y:300-12 )
        myLabel3.zPosition = 2
        self.addChild(myLabel3)
        
        /////////////////////////////
        let effect = SKSpriteNode(imageNamed: "effect.png")
        self.addChild(effect)
        effect.zPosition = 0
        effect.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        /////////////////////////////
        let act1 = SKSpriteNode(imageNamed: "act1.png")
        self.addChild(act1)
        act1.zPosition = 2
        act1.position = CGPoint(x:self.frame.midX+250, y:self.frame.midY-150)
        
       
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        button1.texture=SKTexture(imageNamed: "button1.png")
        button2.texture=SKTexture(imageNamed: "button1.png")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
     //   var touch: UITouch = touches.allObjects[0] as! UITouch
       // let touch: UITouch = touches.first!
        if let touch = touches.first {
            
        let location: CGPoint = touch.location(in: self)
        
        if button2.contains(location) {
            button2.texture=SKTexture(imageNamed: "button2.png")
        }
        
        if button1.contains(location) {
            button1.texture=SKTexture(imageNamed: "button2.png")
        }
        }
    }
   
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}
