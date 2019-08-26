//
//  PertanyaanRahasiaViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class PertanyaanRahasiaViewController: UIViewController {

    @IBOutlet weak var pertanyaanRahasiaTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pertanyaanRahasiaTF.layer.cornerRadius = 20.0
        pertanyaanRahasiaTF.layer.masksToBounds = true
        pertanyaanRahasiaTF.layer.borderColor = UIColor.black.cgColor
        pertanyaanRahasiaTF.layer.borderWidth = 3
    }
    

    @IBAction func pertanyaanRahasiaButton(sender: AnyObject) {
        let charName = "\(pertanyaanRahasiaTF.text!)"
        print(charName)
        //user default charname
    }
}

extension PertanyaanRahasiaViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
