//
//  SudahMilihSakitViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 02/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class SudahMilihSakitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOkeSakit(_ sender: Any) {
        UserDefaults.standard.set(Date(), forKey: "tanggalSakit")
    }
    
    @IBAction func btnOkeSehat(_ sender: Any) {
        UserDefaults.standard.set(Date(), forKey: "tanggalSakit")
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
