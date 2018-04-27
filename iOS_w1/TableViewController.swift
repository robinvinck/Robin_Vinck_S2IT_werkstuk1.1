//
//  TableViewController.swift
//  iOS_w1
//
//  Created by Robin Vinck on 9/04/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()

       //let persoon1 =  Persoon(voornaam: "Robin", achternaam: "Vinck", image: "robin", adres: "elshout", coor: 1, tel: 1)
       //let persoon2 =  Persoon(voornaam: "Jany", achternaam: "Ertveldt", image: "jany", adres: "elshout", coor: 1, tel: 1)
       //let persoon3 =  Persoon(voornaam: "Aron", achternaam: "Raes", image: "aron", adres: "elshout", coor: 1, tel: 1)
        
        //let adres =
        let persoon1 =  Persoon(voornaam: "Robin", achternaam: "Vinck", image: "robin",adres: Adres(latitude: 50.904602, longitude: 4.164215), coor: 1, tel: 1)
        let persoon2 =  Persoon(voornaam: "Jany", achternaam: "Ertveldt", image: "jany", adres: Adres(latitude: 50.904158, longitude: 4.166097), coor: 1, tel: 1)
        personen.append(persoon1)
        personen.append(persoon2)
       // personen.append(persoon3)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = personen[indexPath.row].voornaam
        cell.detailTextLabel?.text = personen[indexPath.row].achternaam
        cell.imageView?.image = UIImage(named: personen[indexPath.row].image)
        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarPersoon"
        {
            print("ok")
            let vc = segue.destination as! PersoonViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.persoonInKwestie = personen[(indexPath?.row)!]
            vc.personen = personen
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
