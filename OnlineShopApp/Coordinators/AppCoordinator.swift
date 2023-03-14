//
//  AppCoordinator.swift
//  OnlineShopApp
//
//  Created by Ярослав Павловский on 14.03.23.
//

import UIKit
class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signInVC = UIStoryboard(name: "SignInVC", bundle: nil).instantiateViewController(withIdentifier: "\(SignInVC.self)") as! SignInVC
        let signInViewModel = SignInViewModel()
        signInViewModel.appCoordinator = self
        signInVC.viewModel = signInViewModel
        print("Ok")
        navigationController.pushViewController(signInVC, animated: true)
        print("pushing")
    }
}
