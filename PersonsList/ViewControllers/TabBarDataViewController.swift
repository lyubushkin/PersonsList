//
//  TabBarDataViewController.swift
//  PersonsList
//
//  Created by Aleksey Lyubushkin on 17.02.2021.
//

import UIKit

class TabBarDataViewController: UITabBarController {
    
    let dataManager = DataManager()
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        initPersons()
        sendDataToViewControllers()
        
    }
    
    private func initPersons() {
        while let person = Person.getPerson(from: dataManager) {
            persons.append(person)
        }
    }
    
    private func sendDataToViewControllers() {
        
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            guard
                let navigationController = viewController as? UINavigationController
            else { return }
            
            if let personsVC = navigationController.topViewController as? PersonsViewController {
                personsVC.persons = persons
            }
            
            if let sectionsVC = navigationController.topViewController as? SectionsViewController {
                sectionsVC.persons = persons
            }
        }
    }
}
