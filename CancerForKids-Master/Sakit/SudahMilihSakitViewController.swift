//
//  SudahMilihSakitViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 02/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class SudahMilihSakitViewController: UIViewController {

    let currentDateTime = Date()
    let formatter = DateFormatter()
    let formatter2 = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOkeSakit(_ sender: Any) {
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter2.dateStyle = .none
        formatter2.timeStyle = .short
        let tanggalSakit = formatter.string(from: currentDateTime)
        let jamSakit = formatter2.string(from: currentDateTime)
        UserDefaults.standard.set(tanggalSakit, forKey: "tanggalSakit")
        UserDefaults.standard.set(jamSakit, forKey: "jamSakit")
    }
    
    @IBAction func btnOkeSehat(_ sender: Any) {
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter2.dateStyle = .none
        formatter2.timeStyle = .short
        let tanggalSakit = formatter.string(from: currentDateTime)
        let jamSakit = formatter2.string(from: currentDateTime)
        UserDefaults.standard.set(tanggalSakit, forKey: "tanggalSakit")
        UserDefaults.standard.set(jamSakit, forKey: "jamSakit")
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
