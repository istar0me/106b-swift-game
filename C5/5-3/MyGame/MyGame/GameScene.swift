//
//  GameScene.swift
//  MyGame
//
//  Created by Powen Ko on 2/11/15.
//  Copyright (c) 2015 Powen Ko. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
   
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "copyright 2015 PowenKo.com, All Rights Reserved.";
        myLabel.fontSize = 32;
        myLabel.position = CGPoint(x:self.frame.midX,y: 100);
        self.addChild(myLabel)
        
        /////////////////////////////
        let bgImage = SKSpriteNode(imageNamed: "bg.jpg")
        self.addChild(bgImage)
        bgImage.zPosition = -1
        bgImage.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        ////////////////////////////
        let button1 = SKSpriteNode(imageNamed: "button1.png")
        self.addChild(button1)
        button1.position = CGPoint(x: 300,y:200 );
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "About Us"
        myLabel2.fontSize = 28
        myLabel2.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel2.zPosition = 2
        myLabel2.position = CGPoint(x: 300,y:200-12 );
        self.addChild(myLabel2)
        
        let button2 = SKSpriteNode(imageNamed: "button1.png")
        self.addChild(button2)
        button2.position = CGPoint(x: 300,y:300 );
        let myLabel3 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel3.text = "Start"
        myLabel3.fontSize = 28
        myLabel3.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel3.position = CGPoint(x: 300,y:300-12 )
        myLabel3.zPosition = 2
        self.addChild(myLabel3)
        
        
        
//        let button3 = SKSpriteNode(imageNamed: "button1.png")
//        self.addChild(button3)
//        button3.position = CGPoint(x: 850,y:200 );
//        button3.zPosition = 2
//        let button4 = SKSpriteNode(imageNamed: "button2.png")
//        self.addChild(button4)
//        button4.position = CGPoint(x: 800,y:200 );
//        button4.zPosition = 1
       
        
    }
  //  override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.location(in: self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotate(byAngle: CGFloat(M_PI), duration:1)
            
            sprite.run(SKAction.repeatForever(action))
            
            self.addChild(sprite)
        }

    }
   
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}
