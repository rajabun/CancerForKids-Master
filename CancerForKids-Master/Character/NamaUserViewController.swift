//
//  NamaUserViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 23/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class NamaUserViewController: UIViewController {
    
    
    
    @IBOutlet weak var textFieldUser: UITextField!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            textFieldUser.layer.cornerRadius = 20.0
            textFieldUser.layer.masksToBounds = true
            textFieldUser.layer.borderColor = UIColor.black.cgColor
            textFieldUser.layer.borderWidth = 3
            
            textFieldUser.delegate = self
            
            AudioModel.audioPlayerSingleton.audioNamaKamuSiapa()
            
        }
        // Do any additional setup after loading the view.
        
    @IBAction func enterButton(_ sender: Any) {
        let name = "\(textFieldUser.text!)"
        UserDefaults.standard.set(name, forKey: "namaUser")
        //user default name
        }
    }
    
    extension NamaUserViewController : UITextFieldDelegate{
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }
    
    

