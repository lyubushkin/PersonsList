//
//  PersonsViewController.swift
//  PersonsList
//
//  Created by Aleksey Lyubushkin on 17.02.2021.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Persons List"
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = person.fullName

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard
                let personDetailVC = segue.destination as? PersonDetailViewController
            else { return }
            
            personDetailVC.person = persons[indexPath.row]
        }
    }
}
