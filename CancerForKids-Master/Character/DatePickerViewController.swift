//
//  DatePickerViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 23/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var tglLahir: Date!
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateFormat = "dd-MM-yyyy"
        

    }
    
    @IBAction func btnSimpanTanggalLahir(_ sender: Any) {
        tglLahir = datePicker.date
        UserDefaults.standard.set(tglLahir, forKey: "tglLahir")
        //user default tanggal lahir
    }
    @IBAction func dateSelectedFromPicker(_ :  AnyObject){
        formatter.dateFormat = "dd-MM-yyyy"
        
        }
    
    }


