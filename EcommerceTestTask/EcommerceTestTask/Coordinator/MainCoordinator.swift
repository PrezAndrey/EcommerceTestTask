//
//  MainCoordinator.swift
//  EcommerceTestTask
//
//  Created by Андрей  on 15.12.2022.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childControllers = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
