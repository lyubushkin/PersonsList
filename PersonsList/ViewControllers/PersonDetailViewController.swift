//
//  PersonDetailViewController.swift
//  PersonsList
//
//  Created by Lyubushkin on 17.02.2021.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person.fullName
        
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
