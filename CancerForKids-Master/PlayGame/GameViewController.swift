//
//  GameViewController.swift
//  BelajarAnimasiDenganSpriteKit
//
//  Created by Muhammad Rajab Priharsanto on 20/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let view = view as? SKView
        {
            // Create the scene programmatically
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            view.ignoresSiblingOrder = true
//            //show fps and nodes
            view.showsFPS = true
            view.showsNodeCount = true
            scene.gameViewController = self
            view.presentScene(scene)
        }
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
