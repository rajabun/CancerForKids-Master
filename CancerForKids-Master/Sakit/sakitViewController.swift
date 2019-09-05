//
//  sakitViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 23/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class sakitViewController: UIViewController {

    var audioReady = AudioModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioReady.audioBagianTubuh()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSakitKepala(_ sender: Any) {
        UserDefaults.standard.set("kepala", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSakitPundak(_ sender: Any) {
        UserDefaults.standard.set("pundak", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSakitDada(_ sender: Any) {
        UserDefaults.standard.set("dada", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSakitPerut(_ sender: Any) {
        UserDefaults.standard.set("perut", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSakitTangan(_ sender: Any) {
        UserDefaults.standard.set("tangan", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSakitKaki(_ sender: Any) {
        UserDefaults.standard.set("kaki", forKey: "sakitnyatuhdisini")
    }
    
    @IBAction func btnSehat(_ sender: Any) {
        UserDefaults.standard.set("sehat", forKey: "sakitnyatuhdisini")
        UserDefaults.standard.set(0, forKey: "nilaiSakit")
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
