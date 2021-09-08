//
//  ViewController.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import UIKit

class PersonDataViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }


}

