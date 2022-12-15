//
//  Coordinator.swift
//  EcommerceTestTask
//
//  Created by Андрей  on 15.12.2022.
//

import UIKit

protocol Coordinator {
    
    var childControllers: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
