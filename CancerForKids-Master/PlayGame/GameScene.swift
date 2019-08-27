//
//  GameScene.swift
//  BelajarAnimasiDenganSpriteKit
//
//  Created by Muhammad Rajab Priharsanto on 20/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import SpriteKit

enum ZPositions: Int
{
    case background
    case foreground
    case player
    case otherNodes
}

struct ColliderType
{
    
}

class GameScene: SKScene, SKPhysicsContactDelegate
{
    private var ninjaCat = SKSpriteNode()
    private var ninjaCatAnimationFrames: [SKTexture] = []
    var updateLocation: CGPoint = CGPoint(x: 458, y: 300)
    let background = SKSpriteNode(imageNamed: "HomeBackground.png")
    let obatButton = SKSpriteNode(imageNamed: "ObatButton.png")
    let makanButton = SKSpriteNode(imageNamed: "MakanButton.png")
    let danceButton = SKSpriteNode(imageNamed: "MusicButton.png")
    let backButton = SKSpriteNode(imageNamed: "BackButton.png")
    var smileEmojiView = SKSpriteNode(imageNamed: "SmileEmoji.png")
    var progressBarView = SKSpriteNode(imageNamed: "ProgressBarEmoticons50%.png")
//    let halfOvalImage = SKSpriteNode(imageNamed: "HalfOvalPlayMenu.png")
    
    //yang gerak
    let ObatCategory   : UInt32 = 0x1 << 0
    let MakanCategory : UInt32 = 0x1 << 1
    
    //yang diem
    let PlayerCategory : UInt32 = 0x1 << 2
    
    //disentuh atau nggak
    var isFingerOnTouch = false
    
    var audioReady = AudioModel()
    var viewController: UIViewController?
    
    override func didMove(to view: SKView)
    {
        physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
        physicsWorld.contactDelegate = self
        
        buildChildNodes()
        
        buildDance()
        animateDance()
        
        //buildPhysics()
    }
    
    func buildChildNodes()
    {
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        background.zPosition = CGFloat(ZPositions.background.rawValue)
        addChild(background)
        
        //        halfOvalImage.position = CGPoint(x: 830, y: 365)
        //        background.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //        halfOvalImage.name = "HalfOval"
        //        addChild(halfOvalImage)
        
        obatButton.position = CGPoint(x: 845, y: 532)
        obatButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //obatButton.size = CGSize(width: 79, height: 79)
        obatButton.name = "ObatButton"
        addChild(obatButton)
        
        makanButton.position = CGPoint(x: 815, y: 381)
        makanButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //makanButton.size = CGSize(width: 96, height: 95)
        makanButton.name = "MakanButton"
        addChild(makanButton)
        
        danceButton.position = CGPoint(x: 854, y: 232)
        danceButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //danceButton.size = CGSize(width: 79, height: 79)
        danceButton.name = "DanceButton"
        addChild(danceButton)
        
        backButton.position = CGPoint(x: 85, y: 671)
        backButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //backButton.size = CGSize(width: 79, height: 79)
        backButton.name = "BackButton"
        addChild(backButton)
        
        smileEmojiView.position = CGPoint(x: 967, y: 590)
        smileEmojiView.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //smileEmojiView.size = CGSize(width: 79, height: 79)
        smileEmojiView.name = "SmileEmojiView"
        addChild(smileEmojiView)
        
        progressBarView.position = CGPoint(x: 967, y: 381)
        progressBarView.zPosition = CGFloat(ZPositions.foreground.rawValue)
        //progressBarView.size = CGSize(width: 79, height: 79)
        progressBarView.name = "ProgressBarView"
        addChild(progressBarView)
    }
    
    func buildDance()
    {
        let ninjaCatAnimatedAtlas = SKTextureAtlas(named: "Police_dance")
        var danceFrames: [SKTexture] = []
        
        let numImages = ninjaCatAnimatedAtlas.textureNames.count
        for i in 1...numImages
        {
            let ninjaCatTextureName = "police_dance_\(i)"
            danceFrames.append(ninjaCatAnimatedAtlas.textureNamed(ninjaCatTextureName))
        }
        ninjaCatAnimationFrames = danceFrames
        
//        let firstFrameTexture = ninjaCatAnimationFrames[0]
//        ninjaCat = SKSpriteNode(texture: firstFrameTexture)
//        ninjaCat.position = updateLocation
        ninjaCat.position = CGPoint(x: frame.midX, y: 336)
        ninjaCat.zPosition = CGFloat(ZPositions.player.rawValue)
//        ninjaCat.size = CGSize(width: 136, height: 301)
        ninjaCat.size = CGSize(width: 386, height: 422)
        ninjaCat.name = "ninjaCatDance"
        addChild(ninjaCat)
    }
    
    func buildPhysics()
    {
        ninjaCat.physicsBody = SKPhysicsBody(rectangleOf: ninjaCat.size)
        obatButton.physicsBody = SKPhysicsBody(rectangleOf: obatButton.size)
        makanButton.physicsBody = SKPhysicsBody(rectangleOf: makanButton.size)
        
        //yang gerak
        obatButton.physicsBody!.categoryBitMask = ObatCategory
        makanButton.physicsBody!.categoryBitMask = MakanCategory
        
        //        obatButton.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
        
        //yang diem
        ninjaCat.physicsBody!.categoryBitMask = PlayerCategory
        
        //tombol obat kontak dengan karakter
        obatButton.physicsBody!.contactTestBitMask = PlayerCategory
    }
    
    func animateDance()
    {
        ninjaCat.run(SKAction.repeatForever(
            SKAction.animate(with: ninjaCatAnimationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: true)),
                     withKey:"dancingInPlaceNinjaCat")
    }
    
    func buildRun()
    {
        let ninjaCatAnimatedAtlas = SKTextureAtlas(named: "Police_run")
        var runFrames: [SKTexture] = []
        
        let numImages = ninjaCatAnimatedAtlas.textureNames.count
        for i in 1...numImages
        {
            let ninjaCatTextureName = "police_run_\(i)"
            runFrames.append(ninjaCatAnimatedAtlas.textureNamed(ninjaCatTextureName))
        }
        ninjaCatAnimationFrames = runFrames
        
//        let firstFrameTexture = ninjaCatAnimationFrames[0]
//        ninjaCat = SKSpriteNode(texture: firstFrameTexture)
//        ninjaCat.position = updateLocation
        ninjaCat.position = CGPoint(x: frame.midX, y: frame.midY)
        ninjaCat.zPosition = CGFloat(ZPositions.player.rawValue)
//        ninjaCat.size = CGSize(width: 136, height: 301)
        ninjaCat.size = CGSize(width: 257, height: 449)
        ninjaCat.name = "ninjaCatRun"
        addChild(ninjaCat)
    }
    
    //animate ninja cat to punch
    func animateRun()
    {
        ninjaCat.run(SKAction.repeatForever(
            SKAction.animate(with: ninjaCatAnimationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: true)),
                     withKey:"runInPlaceNinjaCat")
    }
    
    func buildAttack()
    {
        let ninjaCatAnimatedAtlas = SKTextureAtlas(named: "Police_attack")
        var attackFrames: [SKTexture] = []
        
        let numImages = ninjaCatAnimatedAtlas.textureNames.count
        for i in 1...numImages
        {
            let ninjaCatTextureName = "police_attack_\(i)"
            attackFrames.append(ninjaCatAnimatedAtlas.textureNamed(ninjaCatTextureName))
        }
        ninjaCatAnimationFrames = attackFrames
        
//        let firstFrameTexture = ninjaCatAnimationFrames[0]
//        ninjaCat = SKSpriteNode(texture: firstFrameTexture)
//        ninjaCat.position = updateLocation
        ninjaCat.position = CGPoint(x: frame.midX, y: frame.midY)
        ninjaCat.zPosition = CGFloat(ZPositions.player.rawValue)
//        ninjaCat.size = CGSize(width: 136, height: 301)
        ninjaCat.size = CGSize(width: 357, height: 477)
        ninjaCat.name = "ninjaCatAttack"
        addChild(ninjaCat)
    }
    
    //animate ninja cat to kick
    func animateAttack()
    {
        ninjaCat.run(SKAction.repeatForever(
            SKAction.animate(with: ninjaCatAnimationFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: true)),
                     withKey:"attackInPlaceBear")
    }
    
    //Moving the Bear Around the Screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        //        let touch = touches.first!
        for touch in touches
        {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "ObatButton"
            {
                // Call the function here.
                backgroundColor = .black
                audioReady.audioClick()
                removeAnimation()
                buildAttack()
                animateAttack()
                print("Tombol obat berhasil ditekan")
                smileEmojiView.texture = SKTexture(imageNamed: "SadEmoji.png")
                progressBarView.texture = SKTexture(imageNamed: "ProgressBarEmoticons1%.png")
            }
            else if touchedNode.name == "MakanButton"
            {
                // Call the function here.
                backgroundColor = .yellow
                audioReady.audioClick()
                removeAnimation()
                buildRun()
                animateRun()
                print("Tombol makan berhasil ditekan")
                smileEmojiView.texture = SKTexture(imageNamed: "ScareEmoji.png")
                progressBarView.texture = SKTexture(imageNamed: "ProgressBarEmoticons25%.png")
            }
            else if touchedNode.name == "DanceButton"
            {
                // Call the function here.
                backgroundColor = .green
                audioReady.audioPlay()
                removeAnimation()
                buildDance()
                animateDance()
                print("Tombol dance berhasil ditekan")
                smileEmojiView.texture = SKTexture(imageNamed: "ConfuseEmoji.png")
                progressBarView.texture = SKTexture(imageNamed: "ProgressBarEmoticons100%.png")
            }
            else if touchedNode.name == "BackButton"
            {
                // Call the function here.
                //backgroundColor = .blue
                removeAllChildren()
                segue()
                print("Tombol back berhasil ditekan")
            }
            else
            {
                //moveNinjaCat(location: location)
                print("Kucing jalan")
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "ObatButton"
            {
                obatButton.position.x = location.x
                obatButton.position.y = location.y
                obatButton.zPosition = CGFloat(ZPositions.otherNodes.rawValue)
                print("Obat Button Position :")
                print("x: \(obatButton.position.x), y: \(obatButton.position.y)")
            }
            else if touchedNode.name == "MakanButton"
            {
                makanButton.position.x = location.x
                makanButton.position.y = location.y
                makanButton.zPosition = CGFloat(ZPositions.otherNodes.rawValue)
                print("Makan Button Position :")
                print("x: \(makanButton.position.x), y: \(makanButton.position.y)")
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "ObatButton"
            {
                obatButton.position = CGPoint(x: 845, y: 532)
                obatButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
                if obatButton.position == CGPoint(x: frame.midX, y: frame.midY)
                {
                    smileEmojiView.texture = SKTexture(imageNamed: "SmileEmoji.png")
                    print("Node Detected")
                    //obatButton.position = CGPoint(x: 845, y: 532)
                }
            }
            else if touchedNode.name == "MakanButton"
            {
                makanButton.position = CGPoint(x: 815, y: 381)
                makanButton.zPosition = CGFloat(ZPositions.foreground.rawValue)
            }
//            if let body = physicsWorld.body(at: location)
//            {
//                if body.node!.name == "ObatButton"
//                {
//                    print("Began touch on paddle")
//                    isFingerOnTouch = true
//                }
//            }
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact)
    {
        //self.physicsWorld.contactDelegate = self
        // 1
        var firstBody = SKPhysicsBody(rectangleOf: ninjaCat.size)
        var secondBody = SKPhysicsBody(rectangleOf: obatButton.size)
        // 2
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask
        {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        }
        else
        {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        // 3
        if firstBody.categoryBitMask == ObatCategory && secondBody.categoryBitMask == PlayerCategory
        {
            print("Hit player. First contact has been made.")
        }
    }
    
    func ninjaCatMoveEnded()
    {
        ninjaCat.removeAllActions()
    }
    
    func removeAnimation()
    {
        //remove child node from parent, biar kucingnya gak kagebunshin
        if let child = self.childNode(withName: "ninjaCatDance") as? SKSpriteNode
        {
            child.removeFromParent()
        }
        
        if let child = self.childNode(withName: "ninjaCatRun") as? SKSpriteNode
        {
            child.removeFromParent()
        }
        
        if let child = self.childNode(withName: "ninjaCatAttack") as? SKSpriteNode
        {
            child.removeFromParent()
        }
    }
    
    func moveNinjaCat(location: CGPoint)
    {
        // 1
        var multiplierForDirection: CGFloat
        
        // 2
        let ninjaCatSpeed = frame.size.width / 3.0
        
        // 3
        let moveDifference = CGPoint (x: location.x - ninjaCat.position.x, y: location.y - ninjaCat.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        // 4
        let moveDuration = distanceToMove / ninjaCatSpeed
        
        // 5
        if moveDifference.x < 0
        {
            multiplierForDirection = -1.0
        }
        else
        {
            multiplierForDirection = 1.0
        }
        ninjaCat.xScale = abs(ninjaCat.xScale) * multiplierForDirection
        
        updateLocation = location
        //animate the ninja cat
        // 1
        if ninjaCat.action(forKey: "dancingInPlaceNinjaCat") == nil
        {
            // if legs are not moving, start them
            animateDance()
        }
        
        // 2
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        // 3
        let doneAction = SKAction.run({ [weak self] in
            self?.ninjaCatMoveEnded()
        })
        
        // 4
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        ninjaCat.run(moveActionWithDone, withKey:"ninjaCatMoving")
    }
    
    func segue()
    {
        viewController?.performSegue(withIdentifier: "push", sender: viewController)
    }
    
    //    //Changing Animation Facing Direction
    //    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    //    {
    //        let touch = touches.first!
    //        let location = touch.location(in: self)
    //
    //        var multiplierForDirection: CGFloat
    //        if location.x < frame.midX
    //        {
    //            // walk left
    //            multiplierForDirection = 1.0
    //        }
    //        else
    //        {
    //            // walk right
    //            multiplierForDirection = -1.0
    //        }
    //
    //        ninjaCat.xScale = abs(ninjaCat.xScale) * multiplierForDirection
    //        animateDance()
    //    }
}

