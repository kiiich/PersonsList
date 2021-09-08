//
//  TableViewController.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import UIKit

class TableViewController: UITableViewController {

    let Persons = DataManager.getPersons()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = Persons[indexPath.row].fullName
        
        cell.contentConfiguration = content

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    

}
