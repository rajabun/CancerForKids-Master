//
//  RangeSakitViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 02/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class RangeSakitViewController: UIViewController {

    @IBOutlet weak var sakitLabel: UILabel!
    @IBOutlet weak var emojiImageView: UIImageView!
    
    var sakit: Float = 50.0
    
    @IBOutlet weak var slideSakit: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSimpanSakit(_ sender: Any) {
        //Masuk ke Core Data
        let nilaiSakit = self.sakit
        UserDefaults.standard.set(nilaiSakit, forKey: "nilaiSakit")
    }
    
    
    @IBAction func sakitChanged(_ sender: UISlider) {
        sakit = sender.value
        updateView()
    }
    
    func updateView() {
        let finalSakit = String(format: "%.0f", self.sakit)
        sakitLabel.text = "\(finalSakit)"
        switch sakit{
        case 0 ... 33.2:
            emojiImageView.image = UIImage(named: "Confuse Emoji Button-1")
        case 33.3 ... 66.6:
            emojiImageView.image = UIImage(named: "Sad Emoji Button-2")
        default:
            emojiImageView.image = UIImage(named: "Scare Emoji Button")
        }
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
