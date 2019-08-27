//
//  ParentsViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ParentsViewController: UIViewController {

    @IBOutlet weak var masukanSandiTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        masukanSandiTF.layer.cornerRadius = 20.0
        masukanSandiTF.layer.masksToBounds = true
        masukanSandiTF.layer.borderColor = UIColor.black.cgColor
        masukanSandiTF.layer.borderWidth = 3
    }
    

    @IBAction func enterSandiButton(sender: AnyObject) {
        let charName = "\(masukanSandiTF.text!)"
        print(charName)
        //user default charname
    }
}

extension ParentsViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
