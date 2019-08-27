//
//  DaftarKegiatanViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class DaftarKegiatanViewController: UIViewController {

    @IBOutlet var kegiatanHarianSatu: UITextField!
    @IBOutlet var kegiatanHarianDua: UITextField!
    @IBOutlet var kegiatanMendatangSatu: UITextField!
    @IBOutlet var kegiatanMendatangDua: UITextField!
    @IBOutlet var kegiatanMendatangTiga: UITextField!
    
    @IBOutlet var timePicker: UIDatePicker!
    @IBOutlet var dateTimePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kegiatanHarianSatu.layer.cornerRadius = 20.0
        kegiatanHarianSatu.layer.masksToBounds = true
        kegiatanHarianSatu.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianSatu.layer.borderWidth = 3
        
        
        kegiatanHarianDua.layer.cornerRadius = 20.0
        kegiatanHarianDua.layer.masksToBounds = true
        kegiatanHarianDua.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianDua.layer.borderWidth = 3
        
        
        kegiatanMendatangSatu.layer.cornerRadius = 20.0
        kegiatanMendatangSatu.layer.masksToBounds = true
        kegiatanMendatangSatu.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangSatu.layer.borderWidth = 3
        
        
        kegiatanMendatangDua.layer.cornerRadius = 20.0
        kegiatanMendatangDua.layer.masksToBounds = true
        kegiatanMendatangDua.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangDua.layer.borderWidth = 3
        
        
        kegiatanMendatangTiga.layer.cornerRadius = 20.0
        kegiatanMendatangTiga.layer.masksToBounds = true
        kegiatanMendatangTiga.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangTiga.layer.borderWidth = 3
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
