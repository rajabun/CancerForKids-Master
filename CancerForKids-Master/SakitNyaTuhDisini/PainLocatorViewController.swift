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
    @IBOutlet weak var bahuPersen: UILabel!
    @IBOutlet weak var bahuPosisi: UILabel!
    @IBOutlet weak var bahuEmoji: UIImageView!
    @IBOutlet weak var sakitBahu: UIButton!
    
    @IBOutlet weak var dadaBalon: UIImageView!
    @IBOutlet weak var dadaPanah: UIImageView!
    @IBOutlet weak var dadaPersen: UILabel!
    @IBOutlet weak var dadaPosisi: UILabel!
    @IBOutlet weak var dadaEmoji: UIImageView!
    @IBOutlet weak var sakitDada: UIButton!
    
    @IBOutlet weak var perutBalon: UIImageView!
    @IBOutlet weak var perutPanah: UIImageView!
    @IBOutlet weak var perutPersen: UILabel!
    @IBOutlet weak var perutPosisi: UILabel!
    @IBOutlet weak var perutEmoji: UIImageView!
    @IBOutlet weak var sakitPerut: UIButton!
    
    @IBOutlet weak var kepalaBalon: UIImageView!
    @IBOutlet weak var kepalaPanah: UIImageView!
    @IBOutlet weak var kepalaPersen: UILabel!
    @IBOutlet weak var kepalaPosisi: UILabel!
    @IBOutlet weak var kepalaEmoji: UIImageView!
    @IBOutlet weak var sakitKepala: UIButton!
    
    @IBOutlet weak var tanganBalon: UIImageView!
    @IBOutlet weak var tanganPanah: UIImageView!
    @IBOutlet weak var tanganPersen: UILabel!
    @IBOutlet weak var tanganPosisi: UILabel!
    @IBOutlet weak var tanganEmoji: UIImageView!
    @IBOutlet weak var sakitTangan: UIButton!
    
    @IBOutlet weak var kakiBalon: UIImageView!
    @IBOutlet weak var kakiPanah: UIImageView!
    @IBOutlet weak var kakiPersen: UILabel!
    @IBOutlet weak var kakiPosisi: UILabel!
    @IBOutlet weak var kakiEmoji: UIImageView!
    @IBOutlet weak var sakitKaki: UIButton!
    
    var posisiSakit = UserDefaults.standard.string(forKey: "sakitnyatuhdisini")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sakitKepala.isHidden = true
        sakitBahu.isHidden = true
        sakitDada.isHidden = true
        sakitPerut.isHidden = true
        sakitTangan.isHidden = true
        sakitKaki.isHidden = true
        
        if sakitKepala.isHidden == true && sakitBahu.isHidden == true && sakitDada.isHidden == true && sakitPerut.isHidden == true && sakitTangan.isHidden == true && sakitKaki.isHidden == true{
            switch posisiSakit {
            case "kepala":
                sakitKepala.isHidden = false
                break;
            case "pundak":
                sakitBahu.isHidden = false
                break;
            case "dada":
                sakitDada.isHidden = false
                break;
            case "perut":
                sakitPerut.isHidden = false
                break;
            case "tangan":
                sakitTangan.isHidden = false
                break;
            case "kaki":
                sakitKaki.isHidden = false
                break;
            default:
                break;
            }
        }
        
        bahuBalon.isHidden = true
        bahuPanah.isHidden = true
        bahuPersen.isHidden = true
        bahuPosisi.isHidden = true
        bahuEmoji.isHidden = true
        
        dadaBalon.isHidden = true
        dadaPanah.isHidden = true
        dadaPersen.isHidden = true
        dadaPosisi.isHidden = true
        dadaEmoji.isHidden = true
        
        perutBalon.isHidden = true
        perutPanah.isHidden = true
        perutPersen.isHidden = true
        perutPosisi.isHidden = true
        perutEmoji.isHidden = true
        
        kepalaBalon.isHidden = true
        kepalaPanah.isHidden = true
        kepalaPersen.isHidden = true
        kepalaPosisi.isHidden = true
        kepalaEmoji.isHidden = true
        
        tanganBalon.isHidden = true
        tanganPanah.isHidden = true
        tanganPersen.isHidden = true
        tanganPosisi.isHidden = true
        tanganEmoji.isHidden = true
        
        kakiBalon.isHidden = true
        kakiPanah.isHidden = true
        kakiPersen.isHidden = true
        kakiPosisi.isHidden = true
        kakiEmoji.isHidden = true
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBahuBalon(_ sender: Any) {
        if bahuBalon.isHidden == true && bahuPanah.isHidden == true && bahuPersen.isHidden==true && bahuPosisi.isHidden==true && bahuEmoji.isHidden==true{
            
            bahuBalon.isHidden = false
            bahuPanah.isHidden = false
            bahuPersen.isHidden = false
            bahuPosisi.isHidden = false
            bahuEmoji.isHidden = false
        }else if bahuBalon.isHidden == false && bahuPanah.isHidden == false && bahuPersen.isHidden==false && bahuPosisi.isHidden==false && bahuEmoji.isHidden==false{
            
            bahuBalon.isHidden = true
            bahuPanah.isHidden = true
            bahuPersen.isHidden = true
            bahuPosisi.isHidden = true
            bahuEmoji.isHidden = true
        }
    }
    
    @IBAction func btnDadaBalon(_ sender: Any) {
        if dadaBalon.isHidden == true && dadaPanah.isHidden == true && dadaPersen.isHidden==true && dadaPosisi.isHidden==true && dadaEmoji.isHidden==true{
            dadaBalon.isHidden = false
            dadaPanah.isHidden = false
            dadaPersen.isHidden = false
            dadaPosisi.isHidden = false
            dadaEmoji.isHidden = false
        }else if dadaBalon.isHidden == false && dadaPanah.isHidden == false && dadaPersen.isHidden==false && dadaPosisi.isHidden==false && dadaEmoji.isHidden==false{
            dadaBalon.isHidden = true
            dadaPanah.isHidden = true
            dadaPersen.isHidden = true
            dadaPosisi.isHidden = true
            dadaEmoji.isHidden = true
        }
    }
    
    @IBAction func btnPerutBalon(_ sender: Any) {
        if perutBalon.isHidden == true && perutPanah.isHidden == true && perutPersen.isHidden==true && perutPosisi.isHidden==true && perutEmoji.isHidden==true{
            perutBalon.isHidden = false
            perutPanah.isHidden = false
            perutPersen.isHidden = false
            perutPosisi.isHidden = false
            perutEmoji.isHidden = false
        }else if perutBalon.isHidden == false && perutPanah.isHidden == false && perutPersen.isHidden==false && perutPosisi.isHidden==false && perutEmoji.isHidden==false{
            perutBalon.isHidden = true
            perutPanah.isHidden = true
            perutPersen.isHidden = true
            perutPosisi.isHidden = true
            perutEmoji.isHidden = true
        }
        
    }
    @IBAction func btnKepalaBalon(_ sender: Any) {
        if kepalaBalon.isHidden == true && kepalaPanah.isHidden == true && kepalaPersen.isHidden==true && kepalaPosisi.isHidden==true && kepalaEmoji.isHidden==true{
            kepalaBalon.isHidden = false
            kepalaPanah.isHidden = false
            kepalaPersen.isHidden = false
            kepalaPosisi.isHidden = false
            kepalaEmoji.isHidden = false
        }else if kepalaBalon.isHidden == false && kepalaPanah.isHidden == false && kepalaPersen.isHidden==false && kepalaPosisi.isHidden==false && kepalaEmoji.isHidden==false{
            kepalaBalon.isHidden = true
            kepalaPanah.isHidden = true
            kepalaPersen.isHidden = true
            kepalaPosisi.isHidden = true
            kepalaEmoji.isHidden = true
        }
        
    }
    @IBAction func btnTanganBalon(_ sender: Any) {
        if tanganBalon.isHidden == true && tanganPanah.isHidden == true && tanganPersen.isHidden==true && tanganPosisi.isHidden==true && tanganEmoji.isHidden==true{
            tanganBalon.isHidden = false
            tanganPanah.isHidden = false
            tanganPersen.isHidden = false
            tanganPosisi.isHidden = false
            tanganEmoji.isHidden = false
        }else if tanganBalon.isHidden == false && tanganPanah.isHidden == false && tanganPersen.isHidden==false && tanganPosisi.isHidden==false && tanganEmoji.isHidden==false{
            tanganBalon.isHidden = true
            tanganPanah.isHidden = true
            tanganPersen.isHidden = true
            tanganPosisi.isHidden = true
            tanganEmoji.isHidden = true
        }
    }
    
    @IBAction func btnKakiBalon(_ sender: Any) {
        if kakiBalon.isHidden == true && kakiPanah.isHidden == true && kakiPersen.isHidden==true && kakiPosisi.isHidden==true && kakiEmoji.isHidden==true{
            kakiBalon.isHidden = false
            kakiPanah.isHidden = false
            kakiPersen.isHidden = false
            kakiPosisi.isHidden = false
            kakiEmoji.isHidden = false
        }else if kakiBalon.isHidden == false && kakiPanah.isHidden == false && kakiPersen.isHidden==false && kakiPosisi.isHidden==false && kakiEmoji.isHidden==false{
            kakiBalon.isHidden = true
            kakiPanah.isHidden = true
            kakiPersen.isHidden = true
            kakiPosisi.isHidden = true
            kakiEmoji.isHidden = true
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
