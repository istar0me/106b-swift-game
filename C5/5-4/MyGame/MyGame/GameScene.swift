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
   
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "copyright 2015 PowenKo.com, All Rights Reserved.";
        myLabel.fontSize = 32;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame),y: 100);
        self.addChild(myLabel)
        
        /////////////////////////////
        let bgImage = SKSpriteNode(imageNamed: "bg.jpg")
        self.addChild(bgImage)
        bgImage.zPosition = -1
        bgImage.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        ////////////////////////////
        
        self.addChild(button1)
        button1.position = CGPoint(x: 300,y:200 );
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "About Us"
        myLabel2.fontSize = 28
        myLabel2.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel2.position = CGPoint(x: 300,y:200-12 );
        self.addChild(myLabel2)
        
        self.addChild(button2)
        button2.position = CGPoint(x: 300,y:300 );
        let myLabel3 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel3.text = "Start"
        myLabel3.fontSize = 28
        myLabel3.fontColor=UIColor(red: 255/255, green: 255, blue: 255/255, alpha: 200/255)
        myLabel3.position = CGPoint(x: 300,y:300-12 )
        self.addChild(myLabel3)
        
        
        
       
        
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
        
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        button1.texture=SKTexture(imageNamed: "button1.png")
        button2.texture=SKTexture(imageNamed: "button1.png")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
       // var touch: UITouch = touches.allObjects[0] as! UITouch
        
        let touch = touches.first
        
        let location: CGPoint = touch!.locationInNode(self)
        if button2.containsPoint(location) {
            button2.texture=SKTexture(imageNamed: "button2.png")
        }
        
        if button1.containsPoint(location) {
            button1.texture=SKTexture(imageNamed: "button2.png")
        }
        
        
        let buttonx = SKSpriteNode(imageNamed: "button1.png")
        self.addChild(buttonx)
        button2.position = location

        
        
        /* Called when a touch begins */
        /*
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }*/
       
  
        
        

    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
