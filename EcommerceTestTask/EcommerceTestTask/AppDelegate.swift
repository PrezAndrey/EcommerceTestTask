//
//  AppDelegate.swift
//  EcommerceTestTask
//
//  Created by Андрей  on 08.12.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
}

