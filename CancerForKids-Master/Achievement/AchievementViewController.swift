//
//  AchievementViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 05/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {

    @IBOutlet weak var bintang1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (UserDefaults.standard.string(forKey: "SudahMakan") == "sudah"){
            bintang1.image = UIImage(named: "Favourites Star")
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
