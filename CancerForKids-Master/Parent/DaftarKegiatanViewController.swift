//
//  DaftarKegiatanViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class DaftarKegiatanViewController: UIViewController {

    @IBOutlet var kegiatanHarianSatu: UITextField!
    @IBOutlet var kegiatanHarianDua:UITextField!
    @IBOutlet var kegiatanHarianTiga: UITextField!
    
    @IBOutlet var kegiatanMendatangSatu: UITextField!
    @IBOutlet var kegiatanMendatangDua: UITextField!
    
    @IBOutlet var jamHarianSatu: UITextField!
    @IBOutlet var jamHarianDua: UITextField!
    @IBOutlet var jamHarianTiga: UITextField!
    
    @IBOutlet var jamMendatangSatu: UITextField!
    @IBOutlet var jamMendatangDua: UITextField!

    private var datePickerJamHarianSatu: UIDatePicker?
    private var datePickerJamHarianDua: UIDatePicker?
    private var datePickerJamHarianTiga: UIDatePicker?
    private var datePickerJamMendatangSatu: UIDatePicker?
    private var datePickerJamMendatangDua: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePickerJamHarianSatu = UIDatePicker()
        datePickerJamHarianSatu?.datePickerMode = .time
        datePickerJamHarianDua = UIDatePicker()
        datePickerJamHarianDua?.datePickerMode = .time
        datePickerJamHarianTiga = UIDatePicker()
        datePickerJamHarianTiga?.datePickerMode = .time
        
        datePickerJamMendatangSatu = UIDatePicker()
        datePickerJamMendatangSatu?.datePickerMode = .dateAndTime
        datePickerJamMendatangDua = UIDatePicker()
        datePickerJamMendatangDua?.datePickerMode = .dateAndTime
        
        
        datePickerJamHarianSatu!.addTarget(self, action: #selector(DaftarKegiatanViewController.dateChanged(datePicker:)),for: .valueChanged)
        datePickerJamHarianDua!.addTarget(self, action: #selector(DaftarKegiatanViewController.dateChanged(datePicker:)),for: .valueChanged)
        datePickerJamHarianTiga!.addTarget(self, action: #selector(DaftarKegiatanViewController.dateChanged(datePicker:)),for: .valueChanged)
        datePickerJamMendatangSatu!.addTarget(self, action: #selector(DaftarKegiatanViewController.dateAndTimeChanged(datePicker:)),for: .valueChanged)
        datePickerJamMendatangDua!.addTarget(self, action: #selector(DaftarKegiatanViewController.dateAndTimeChanged(datePicker:)),for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(DaftarKegiatanViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        
        jamHarianSatu.inputView = datePickerJamHarianSatu
        jamHarianDua.inputView = datePickerJamHarianDua
        jamHarianTiga.inputView = datePickerJamHarianTiga
        
        jamMendatangSatu.inputView = datePickerJamMendatangSatu
        jamMendatangDua.inputView = datePickerJamMendatangDua
        

        kegiatanHarianSatu.layer.cornerRadius = 20.0
        kegiatanHarianSatu.layer.masksToBounds = true
        kegiatanHarianSatu.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianSatu.layer.borderWidth = 3
        
        
        kegiatanHarianDua.layer.cornerRadius = 20.0
        kegiatanHarianDua.layer.masksToBounds = true
        kegiatanHarianDua.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianDua.layer.borderWidth = 3
        
        kegiatanHarianTiga.layer.cornerRadius = 20.0
        kegiatanHarianTiga.layer.masksToBounds = true
        kegiatanHarianTiga.layer.borderColor = UIColor.orange.cgColor
        kegiatanHarianTiga.layer.borderWidth = 3
        
        kegiatanMendatangSatu.layer.cornerRadius = 20.0
        kegiatanMendatangSatu.layer.masksToBounds = true
        kegiatanMendatangSatu.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangSatu.layer.borderWidth = 3
        
        
        kegiatanMendatangDua.layer.cornerRadius = 20.0
        kegiatanMendatangDua.layer.masksToBounds = true
        kegiatanMendatangDua.layer.borderColor = UIColor.orange.cgColor
        kegiatanMendatangDua.layer.borderWidth = 3
    
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        if datePicker == datePickerJamHarianSatu{
            jamHarianSatu.text = dateFormatter.string(from: datePicker.date)
        }
        else if  datePicker == datePickerJamHarianDua
        {
            jamHarianDua.text = dateFormatter.string(from: datePicker.date)}
        else if  datePicker == datePickerJamHarianTiga
        {   jamHarianTiga.text = dateFormatter.string(from: datePicker.date)}
        //view.endEditing(true)
    }
    
    @objc func dateAndTimeChanged(datePicker: UIDatePicker){
        
        let dateFormatterMendatang = DateFormatter()
        dateFormatterMendatang.dateFormat = "dd/MM/yyyy HH:mm"
        
        if  datePicker == datePickerJamMendatangSatu
        {   jamMendatangSatu.text = dateFormatterMendatang.string(from: datePicker.date)}
        else if  datePicker == datePickerJamHarianDua
        { jamMendatangDua.text = dateFormatterMendatang.string(from: datePicker.date)}
        
        
    }
    
    @IBAction func simpanKegiatanButton(_ sender: Any) {
        let kegiatanHarianSatuu = "\(kegiatanHarianSatu.text!)"
        print(kegiatanHarianSatuu)
        let kegiatanHarianDuaa = "\(kegiatanHarianDua.text!)"
        print(kegiatanHarianDuaa)
        let kegiatanHarianTigaa = "\(kegiatanHarianTiga.text!)"
        print(kegiatanHarianTigaa)
        let kegiatanMendatangSatuu = "\(kegiatanMendatangSatu.text!)"
        print(kegiatanMendatangSatuu)
        let kegiatanMendatangDuaa = "\(kegiatanMendatangDua.text!)"
        print(kegiatanMendatangDuaa)
        
        //user default charname
    }
}

extension DaftarKegiatanViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
