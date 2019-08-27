//
//  DaftarViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class DaftarViewController: UIViewController {

    @IBOutlet var masukanSandiTF: UITextField!
    @IBOutlet var sandiUlangTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        masukanSandiTF.layer.cornerRadius = 20.0
        masukanSandiTF.layer.masksToBounds = true
        masukanSandiTF.layer.borderColor = UIColor.black.cgColor
        masukanSandiTF.layer.borderWidth = 3
        
        sandiUlangTF.layer.cornerRadius = 20.0
        sandiUlangTF.layer.masksToBounds = true
        sandiUlangTF.layer.borderColor = UIColor.black.cgColor
        sandiUlangTF.layer.borderWidth = 3
    }
    
    @IBAction func daftarButton(sender: AnyObject) {
        let charName = "\(masukanSandiTF.text!)"
        print(charName)
        //user default charname
    }
}

extension DaftarViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
  
    
