//
//  ContactsTableViewController.swift
//  ContactsEffect
//
//  Created by planB on 21/2/17.
//  Copyright © 2017 Ioannis. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    
    var tableOFContacts: [TheObjectCalledContact] = []
    
    
    func toggleEdit(){
        tableView.setEditing(!tableView.isEditing, animated: true)
    }
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let buttonToReorder = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(ContactsTableViewController.toggleEdit))
        navigationItem.leftBarButtonItem = buttonToReorder
        
        

        
        
        
        let Kostas = TheObjectCalledContact(nameOfTheContact: "Kostas", phoneOfTheContact: "4353535353")
        let Kiki = TheObjectCalledContact(nameOfTheContact: "Kiki")
        let Peter = TheObjectCalledContact(nameOfTheContact: "Peter", phoneOfTheContact: "333333")
        let Nick = TheObjectCalledContact(phoneOfTheContact: "2222222")  /* without = nil in the initiation I couldnt do this */
        
        
        self.tableOFContacts.append(Kiki)
        self.tableOFContacts.append(Kostas)
        self.tableOFContacts.append(Peter)
        self.tableOFContacts.append(Nick)
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return self.tableOFContacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "theCellOfTheTable", for: indexPath)

        // Configure the cell...
        
        
        let oneContact = self.tableOFContacts[indexPath.row]
        
        
        /*  cell.textLabel?.text = oneContact.nameOfTheContact*/
        
        
        //THE SAFE WAY
        
        if let name = oneContact.nameOfTheContact {
            cell.textLabel?.text = name
        } else {
              cell.textLabel?.text = "Good Morning Again without a Name"
        }
        

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.tableOFContacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
  /* In order to delete the DELETE buttons*/
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        if tableView.isEditing {
            return .none
        } else {
            return .delete
        }
    }
    
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    
    
    
    
    
    
    
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let clickedAndHoldCondact = tableOFContacts.remove(at: fromIndexPath.row)
        tableOFContacts.insert(clickedAndHoldCondact, at: to.row)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        let theOneAndOnlyDestination = segue.destination as! NameAndPhoneOfTheContactViewController
        
        let clickedIndexPath = self.tableView.indexPath(for: sender as! UITableViewCell)/* ! */
        
        let clickedContact = self.tableOFContacts[(clickedIndexPath?.row)!]
        
    
        theOneAndOnlyDestination.oneContact = clickedContact
        
        
        
        
        
        
        
        
        
        
        
    }


}
