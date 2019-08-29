//
//  DoneChoosingViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 28/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class DoneChoosingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDone(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "FinishChoosingChar")
        let storyboard = UIStoryboard(name: "PainLocator", bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() else {return}
        present(vc, animated: true, completion: nil)
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
