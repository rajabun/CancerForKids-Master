//
//  HomeViewController.swift
//  BelajarAnimasiDenganSpriteKit
//
//  Created by Muhammad Rajab Priharsanto on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var balloonImage: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "HomeBackgroundWithBackground.png")!)
        characterImage.image  = UIImage(named: "police")
        balloonImage.image  = UIImage(named: "HomeFillCloud")
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "HomeBackgroundWithBackground.png")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func periksaTubuhButtonAction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func daftarKegiatanButtonAction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func catatanKesehatanButtonAction(_ sender: UIButton)
    {
        
    }
    
    
    @IBAction func areaOrangTuaButtonAction(_ sender: UIButton)
    {
        
    }
    
    
    @IBAction func playButtonAction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func polisiButtonAction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func rewardButtonAction(_ sender: UIButton)
    {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
