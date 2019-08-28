//
//  PainLocatorViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 28/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class PainLocatorViewController: UIViewController {

    @IBOutlet weak var bahuBalon: UIImageView!
    @IBOutlet weak var bahuPanah: UIImageView!
    
    @IBOutlet weak var dadaBalon: UIImageView!
    @IBOutlet weak var dadaPanah: UIImageView!
    
    @IBOutlet weak var perutBalon: UIImageView!
    @IBOutlet weak var perutPanah: UIImageView!
    
    @IBOutlet weak var kepalaBalon: UIImageView!
    @IBOutlet weak var kepalaPanah: UIImageView!
    
    @IBOutlet weak var tanganBalon: UIImageView!
    @IBOutlet weak var tanganPanah: UIImageView!
    
    @IBOutlet weak var kakiBalon: UIImageView!
    @IBOutlet weak var kakiPanah: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bahuBalon.isHidden = true
        bahuPanah.isHidden = true
        dadaBalon.isHidden = true
        dadaPanah.isHidden = true
        perutBalon.isHidden = true
        perutPanah.isHidden = true
        kepalaBalon.isHidden = true
        kepalaPanah.isHidden = true
        tanganBalon.isHidden = true
        tanganPanah.isHidden = true
        kakiBalon.isHidden = true
        kakiPanah.isHidden = true
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBahuBalon(_ sender: Any) {
        if bahuBalon.isHidden == true && bahuPanah.isHidden == true{
            bahuBalon.isHidden = false
            bahuPanah.isHidden = false
        }else if bahuBalon.isHidden == false && bahuPanah.isHidden == false{
            bahuBalon.isHidden = true
            bahuPanah.isHidden = true
        }
    }
    
    @IBAction func btnDadaBalon(_ sender: Any) {
        if dadaBalon.isHidden == true && dadaPanah.isHidden == true{
            dadaBalon.isHidden = false
            dadaPanah.isHidden = false
        }else if dadaBalon.isHidden == false && dadaPanah.isHidden == false{
            dadaBalon.isHidden = true
            dadaPanah.isHidden = true
        }
    }
    
    @IBAction func btnPerutBalon(_ sender: Any) {
        if perutBalon.isHidden == true && perutPanah.isHidden == true{
            perutBalon.isHidden = false
            perutPanah.isHidden = false
        }else if perutBalon.isHidden == false && perutPanah.isHidden == false{
            perutBalon.isHidden = true
            perutPanah.isHidden = true
        }
        
    }
    @IBAction func btnKepalaBalon(_ sender: Any) {
        if kepalaBalon.isHidden == true && kepalaPanah.isHidden == true{
            kepalaBalon.isHidden = false
            kepalaPanah.isHidden = false
        }else if kepalaBalon.isHidden == false && kepalaPanah.isHidden == false{
            kepalaBalon.isHidden = true
            kepalaPanah.isHidden = true
        }
        
    }
    @IBAction func btnTanganBalon(_ sender: Any) {
        if tanganBalon.isHidden == true && tanganPanah.isHidden == true{
            tanganBalon.isHidden = false
            tanganPanah.isHidden = false
        }else if tanganBalon.isHidden == false && tanganPanah.isHidden == false{
            tanganBalon.isHidden = true
            tanganPanah.isHidden = true
        }
    }
    
    @IBAction func btnKakiBalon(_ sender: Any) {
        if kakiBalon.isHidden == true && kakiPanah.isHidden == true{
            kakiBalon.isHidden = false
            kakiPanah.isHidden = false
        }else if kakiBalon.isHidden == false && kakiPanah.isHidden == false{
            kakiBalon.isHidden = true
            kakiPanah.isHidden = true
        }
        
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
