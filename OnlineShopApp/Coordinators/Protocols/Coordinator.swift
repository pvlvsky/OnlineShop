//
//  Coordinator.swift
//  OnlineShopApp
//
//  Created by Ярослав Павловский on 14.03.23.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
