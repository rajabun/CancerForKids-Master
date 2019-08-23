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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundTF.layer.cornerRadius = 20.0
        roundTF.layer.masksToBounds = true
        roundTF.layer.borderColor = UIColor.black.cgColor
        roundTF.layer.borderWidth = 3

        // Do any additional setup after loading the view.
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
