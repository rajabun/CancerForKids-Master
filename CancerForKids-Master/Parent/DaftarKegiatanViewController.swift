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
    @IBOutlet var kegiatanHarianDua:UITextField!

    @IBOutlet var kegiatanHarianTiga: UITextField!
    @IBOutlet var kegiatanMendatangSatu: UITextField!
    @IBOutlet var kegiatanMendatangDua: UITextField!
    
    
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
        
        kegiatanHarianTiga.layer.cornerRadius = 20.0
        kegiatanHarianTiga.layer.masksToBounds = true
        kegiatanHarianTiga.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianTiga.layer.borderWidth = 3
        
        kegiatanMendatangSatu.layer.cornerRadius = 20.0
        kegiatanMendatangSatu.layer.masksToBounds = true
        kegiatanMendatangSatu.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangSatu.layer.borderWidth = 3
        
        
        kegiatanMendatangDua.layer.cornerRadius = 20.0
        kegiatanMendatangDua.layer.masksToBounds = true
        kegiatanMendatangDua.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangDua.layer.borderWidth = 3
    
    }
    
    @IBAction func simpanKegiatanButton(_ sender: Any) {
        let kegiatanHarianSatuu = "\(kegiatanHarianSatu.text!)"
        print(kegiatanHarianSatuu)
        let kegiatanHarianDuaa = "\(kegiatanHarianDua.text!)"
        print(kegiatanHarianDuaa)
        let kegiatanHarianTigaa = "\(kegiatanHarianTiga.text!)"
        print(kegiatanHarianTigaa)
        let kegiatanMendatangSatuu = "\(kegiatanMendatangSatu.text!)"
        print(kegiatanMendatangSatuu)
        let kegiatanMendatangDuaa = "\(kegiatanMendatangDua.text!)"
        print(kegiatanMendatangDuaa
        
        //user default charname
    )}
}

extension DaftarKegiatanViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
