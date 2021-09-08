//
//  TableViewController.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import UIKit

class TableViewController: UITableViewController {

    let persons = DataManager.getPersons()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let personDataVC = segue.destination as? PersonDataViewController else {
            return
        }
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        
        personDataVC.person = persons[indexPath.row]
        
    }
    

}
