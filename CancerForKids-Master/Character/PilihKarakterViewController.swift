//
//  PilihKarakterViewController.swift
//  CancerForKids-Master
//
//  Created by Muhammad Rajab Priharsanto on 05/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class PilihKarakterViewController: UIViewController
{

    var audioReady = AudioModel()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        audioReady.audioBuatMilihKarakter()
        
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
