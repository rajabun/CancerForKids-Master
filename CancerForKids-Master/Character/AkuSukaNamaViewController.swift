//
//  AkuSukaNamaViewController.swift
//  CancerForKids-Master
//
//  Created by Muhammad Rajab Priharsanto on 05/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class AkuSukaNamaViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        AudioModel.audioPlayerSingleton.audioAkuSukaTerimakasih()
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
