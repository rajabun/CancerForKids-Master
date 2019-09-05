//
//  SudahMilihSakitViewController.swift
//  CancerForKids-Master
//
//  Created by Mardydu on 02/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit
import CoreData

class SudahMilihSakitViewController: UIViewController {

    let currentDateTime = Date()
    let formatter = DateFormatter()
    let formatter2 = DateFormatter()
    
    var detailAgendaKegiatan: [NSManagedObject] = []
    
    let tglSakit = UserDefaults.standard.string(forKey: "tanggalSakit")
    let jamSakit = UserDefaults.standard.string(forKey: "jamSakit")
    let bagianSakit = UserDefaults.standard.string(forKey: "sakitnyatuhdisini")
    let nilaiSakit = UserDefaults.standard.string(forKey: "nilaiSakit")
    
    var audioReady = AudioModel()
    
    func saveAll()
    {
        let nameToSave = self.tglSakit
        let jamToSave = self.jamSakit
        let bagianToSave = self.bagianSakit
        let tingkatKesakitanToSave = self.nilaiSakit
        
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
            NSEntityDescription.entity(forEntityName: "AgendaKegiatanHarian",
                                       in: managedContext)!
        
        let agendaKegiatanHarian = NSManagedObject(entity: entity,
                                                   insertInto: managedContext)
        
        // 3
        agendaKegiatanHarian.setValue(nameToSave, forKeyPath: "tanggal")
        agendaKegiatanHarian.setValue(jamToSave, forKeyPath: "jam")
        agendaKegiatanHarian.setValue(bagianToSave, forKeyPath: "bagian")
        agendaKegiatanHarian.setValue(tingkatKesakitanToSave, forKeyPath: "tingkatKesakitan")
        // 4
        do
        {
            try managedContext.save()
            detailAgendaKegiatan.append(agendaKegiatanHarian)
        }
        catch let error as NSError
        {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioReady.audioKamuAnakKuat()

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
        //saveAll()
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
        //saveAll()
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
