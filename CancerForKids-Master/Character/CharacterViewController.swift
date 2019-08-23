//
//  CharacterViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 21/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    
    @IBOutlet weak var roundTF: UITextField!
    @IBOutlet weak var textViewName: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundTF.layer.cornerRadius = 20.0
        roundTF.layer.masksToBounds = true
        roundTF.layer.borderColor = UIColor.black.cgColor
        roundTF.layer.borderWidth = 3
        
        roundTF.delegate = self
        
    }
        // Do any additional setup after loading the view.

    @IBAction func enterNameButton(_ sender: Any) {
        textViewName.text = "\(roundTF.text!)"
    }
}

extension CharacterViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
