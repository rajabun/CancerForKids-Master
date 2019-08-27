//
//  PertanyaanRahasiaDuaViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class PertanyaanRahasiaDuaViewController: UIViewController {

    @IBOutlet var lahirDimanaDua: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lahirDimanaDua.layer.cornerRadius = 20.0
        lahirDimanaDua.layer.masksToBounds = true
        lahirDimanaDua.layer.borderColor = UIColor.black.cgColor
        lahirDimanaDua.layer.borderWidth = 3
    }
    

    @IBAction func pertanyaanRahasiaDuaButton(sender: AnyObject) {
        let charName = "\(lahirDimanaDua.text!)"
        print(charName)
        //user default charname
    }
}

extension PertanyaanRahasiaDuaViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
