//
//  ContactsViewController.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import UIKit

class ContactsViewController: UITableViewController {

    let persons = DataManager.getPersons()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content

        return cell
    }

}
