//
//  DaftarKegiatanViewController.swift
//  CancerForKids-Master
//
//  Created by Cindy Chandra on 26/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit
import CoreData

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
    
    //Buat Core Data
    var detailAktifitasKegiatan: [NSManagedObject] = []
    
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
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        //1
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else
        {
            return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "ActivityList")
        
        //3
        do {
            detailAktifitasKegiatan = try managedContext.fetch(fetchRequest)
            print("Core Data ActivityList Berhasil Fetch")
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        updateUIDariCoreData()
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
        {   jamMendatangSatu.text = dateFormatterMendatang.string(from: datePicker.date)
            print(dateFormatterMendatang.string(from: datePicker.date))
        }
        else if  datePicker == datePickerJamHarianDua
        { jamMendatangDua.text = dateFormatterMendatang.string(from: datePicker.date)}
    }
    
    @IBAction func simpanKegiatanButton(_ sender: Any) {
//        let kegiatanHarianSatuu = "\(kegiatanHarianSatu.text!)"
//        print(kegiatanHarianSatuu)
//        let kegiatanHarianDuaa = "\(kegiatanHarianDua.text!)"
//        print(kegiatanHarianDuaa)
//        let kegiatanHarianTigaa = "\(kegiatanHarianTiga.text!)"
//        print(kegiatanHarianTigaa)
//        let kegiatanMendatangSatuu = "\(kegiatanMendatangSatu.text!)"
//        print(kegiatanMendatangSatuu)
//        let kegiatanMendatangDuaa = "\(kegiatanMendatangDua.text!)"
//        print(kegiatanMendatangDuaa)
        
        //user default charname
        saveAllAktifitas()
    }
    
    func updateUIDariCoreData()
    {
        print("UI Dari Core Data Terupdate")
        kegiatanHarianSatu.text = "Hahaha"
        kegiatanHarianDua.text = "Hahaha"
        kegiatanHarianTiga.text = "Hahaha"
        
        jamHarianSatu.text = ""
        jamHarianDua.text = ""
        jamHarianTiga.text = ""
        
        kegiatanMendatangSatu.text = "Hahaha"
        kegiatanMendatangDua.text = "Hahaha"
        
        jamMendatangSatu.text = ""
        jamMendatangDua.text = ""
        
    }
    
    func saveAllAktifitas()
    {
        let kegiatanHarianSatuu = "\(kegiatanHarianSatu.text!)"
//        print(kegiatanHarianSatuu)
        let kegiatanHarianDuaa = "\(kegiatanHarianDua.text!)"
        let kegiatanHarianTigaa = "\(kegiatanHarianTiga.text!)"

        let jamHarianSatuu = "\(jamHarianSatu.text!)"
        let jamHarianDuaa = "\(jamHarianDua.text!)"
        let jamHarianTigaa = "\(jamHarianTiga.text!)"
        
        let kegiatanMendatangSatuu = "\(kegiatanMendatangSatu.text!)"
        let kegiatanMendatangDuaa = "\(kegiatanMendatangDua.text!)"

        let jamMendatangSatuu = "\(jamMendatangSatu.text!)"
        let jamMendatangDuaa = "\(jamMendatangDua.text!)"
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else
        {
            return
        }
        
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "ActivityList",
                                       in: managedContext)!
        
        let aktifitasKegiatanHarian = NSManagedObject(entity: entity,
                                                   insertInto: managedContext)
        
        // 3
        aktifitasKegiatanHarian.setValue(kegiatanHarianSatuu, forKeyPath: "kegiatanHarianPertama")
        aktifitasKegiatanHarian.setValue(kegiatanHarianDuaa, forKeyPath: "kegiatanHarianKedua")
        aktifitasKegiatanHarian.setValue(kegiatanHarianTigaa, forKeyPath: "kegiatanHarianKetiga")
        aktifitasKegiatanHarian.setValue(jamHarianSatuu, forKeyPath: "jamKegiatanHarianPertama")
        aktifitasKegiatanHarian.setValue(jamHarianDuaa, forKeyPath: "jamKegiatanHarianKedua")
        aktifitasKegiatanHarian.setValue(jamHarianTigaa, forKeyPath: "jamKegiatanHarianKetiga")
        
        aktifitasKegiatanHarian.setValue(kegiatanMendatangSatuu, forKeyPath: "kegiatanMendatangPertama")
        aktifitasKegiatanHarian.setValue(kegiatanMendatangDuaa, forKeyPath: "kegiatanMendatangKedua")
        aktifitasKegiatanHarian.setValue(jamMendatangSatuu, forKeyPath: "jamKegiatanMendatangPertama")
        aktifitasKegiatanHarian.setValue(jamMendatangDuaa, forKeyPath: "jamKegiatanMendatangKedua")
        
        // 4
        do
        {
            try managedContext.save()
            detailAktifitasKegiatan.append(aktifitasKegiatanHarian)
            print("Core Data ActivityList Masuk")
        }
        catch let error as NSError
        {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
}

extension DaftarKegiatanViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
