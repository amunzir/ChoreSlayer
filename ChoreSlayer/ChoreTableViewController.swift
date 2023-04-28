//
//  ChoreTableViewController.swift
//  ChoreSlayer
//
//  Created by Aamina Munzir on 4/26/23.
//

import UIKit

struct Chore {
    var choreName: String
    var chorePoints: Int
}

class ChoreTableViewController: UITableViewController {

    var kitchen = [
        Chore(choreName: "Clean Stove", chorePoints: 5),
        Chore(choreName: "Sweep Floor", chorePoints: 5),
        Chore(choreName: "Clean Sink", chorePoints: 5),
        Chore(choreName: "Dishes", chorePoints: 10),
        Chore(choreName: "Clean Microwave", chorePoints: 5)
    ]
    var bedroom = [
        Chore(choreName: "Organize Vanity", chorePoints: 5),
        Chore(choreName: "Clear Desk", chorePoints: 15),
        Chore(choreName: "Clean Desk", chorePoints: 10),
        Chore(choreName: "Laundry", chorePoints: 10),
        Chore(choreName: "Clear Floor", chorePoints: 15),
        Chore(choreName: "Vacuum", chorePoints: 10),
        Chore(choreName: "Put Clothes Away", chorePoints: 10)
    ]
    var bathroom = [
        Chore(choreName: "Clean Counter", chorePoints: 5),
        Chore(choreName: "Clean Shower", chorePoints: 10),
        Chore(choreName: "Clean Mirror", chorePoints: 5),
        Chore(choreName: "Clean Toilet", chorePoints: 5)
    ]
    var livingRoom = [
        Chore(choreName: "Dust", chorePoints: 5),
        Chore(choreName: "Vacuum", chorePoints: 10)
    ]
    var work = [
        Chore(choreName: "Check Resume", chorePoints: 10),
        Chore(choreName: "Look at Linkdin", chorePoints: 15),
        Chore(choreName: "Look for Photo Outfit", chorePoints: 10),
        Chore(choreName: "Check Emails", chorePoints: 5)
    ]
    var conditionalChores = [
        Chore(choreName: "Take out Trash", chorePoints: 10),
        Chore(choreName: "Clean Fridge", chorePoints: 5),
        Chore(choreName: "Clean Vents", chorePoints: 10),
        Chore(choreName: "Dust Ceiling Fans", chorePoints: 10),
        Chore(choreName: "Clean Keyboard", chorePoints: 5)
    ]
    
    var sections = [[Chore]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sections = [kitchen, bedroom, bathroom, livingRoom, work, conditionalChores]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return self.sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let section = self.sections[section]
        return section.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChoreCell", for: indexPath)

        // Configure the cell...
        let section = self.sections[indexPath.section]
        let currChore = section[indexPath.row]
        cell.textLabel?.text = currChore.choreName
        cell.detailTextLabel?.text = String(currChore.chorePoints)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Kitchen"
        }
        else if section == 1 {
            return "Bedroom"
        }
        else if section == 2 {
            return "Bathroom"
        }
        else if section == 3 {
            return "Living Room"
        }
        else if section == 4 {
            return "Work"
        }
        else if section == 5 {
            return "Conditional Chores"
        }
        return "Section \(section)"
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
