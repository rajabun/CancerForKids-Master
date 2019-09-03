//
//  DetailKegiatanViewController.swift
//  CancerForKids-Master
//
//  Created by Muhammad Rajab Priharsanto on 03/09/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit
import CoreData

class DetailKegiatanViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tanggalTableView: UITableView!
    
    var detailAgendaKegiatan: [NSManagedObject] = []
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundbubble.png")!)

        // Do any additional setup after loading the view.
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
            NSFetchRequest<NSManagedObject>(entityName: "AgendaKegiatanHarian")
        
        //3
        do {
            detailAgendaKegiatan = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    //untuk return baris dalam tableview sesuai dengan isi arraynya
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return detailAgendaKegiatan.count
    }
    
    //untuk memasukkan data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let agendaKegiatanHarian = detailAgendaKegiatan[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TanggalCell", for: indexPath) as! TanggalTableViewCell
        
        //Note how you grab the tanggal attribute from the NSManagedObject. It happens here:
        cell.tanggalLabel.text = agendaKegiatanHarian.value(forKeyPath: "tanggal") as? String
        cell.jamLabel.text = agendaKegiatanHarian.value(forKeyPath: "jam") as? String
        cell.bagianLabel.text = agendaKegiatanHarian.value(forKeyPath: "bagian") as? String
        cell.tingkatKesakitanLabel.text = agendaKegiatanHarian.value(forKeyPath: "tingkatKesakitan") as? String
        
        return cell
    }
    
    func save(name: String)
    {
        
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
        agendaKegiatanHarian.setValue(name, forKeyPath: "tanggal")
        
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
    
    func saveTanggal()
    {
        
    }
    
    @IBAction func addTanggal(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "New Name",
                                      message: "Add a new name",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) {
            [unowned self] action in
            
            guard let textField = alert.textFields?.first,
                let nameToSave = textField.text else {
                    return
            }
            
            self.save(name: nameToSave)
            self.tanggalTableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
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
