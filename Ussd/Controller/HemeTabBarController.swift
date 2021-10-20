//
//  HemeTabBarController.swift
//  Ussd
//
//  Created by 1 on 22/09/21.
//

import UIKit

class HemeTabBarController: UITabBarController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initViews()
        view.backgroundColor = #colorLiteral(red: 0.9063749313, green: 0.9464530349, blue: 0.9885066152, alpha: 1)
    
    }
    func initViews() {
        let home = ViewController()
        home.tabBarItem = UITabBarItem(title: "Главная", image: #imageLiteral(resourceName: "Контур 35"), selectedImage: #imageLiteral(resourceName: "Контур 35"))
        
        let balance = BalanceViewController()
        balance.tabBarItem = UITabBarItem(title: "Баланс", image: #imageLiteral(resourceName: "Сгруппировать 16"), selectedImage: #imageLiteral(resourceName: "Сгруппировать 16"))
        let bonuses = BonusesViewController()
        bonuses.tabBarItem = UITabBarItem(title: "Бонусы", image: #imageLiteral(resourceName: "Сгруппировать 17"), selectedImage: #imageLiteral(resourceName: "Сгруппировать 17"))
        let contacts = ContactsViewController()
        contacts.tabBarItem = UITabBarItem(title: "Контакты", image: #imageLiteral(resourceName: "operator"), selectedImage: #imageLiteral(resourceName: "operator"))
        let profile = ProfileVC()
        profile.tabBarItem = UITabBarItem(title: "Профиль", image: #imageLiteral(resourceName: "user (3)"), selectedImage: #imageLiteral(resourceName: "user (3)"))
        
       
        
        tabBar.tintColor = #colorLiteral(red: 0.2715726197, green: 0.6395024657, blue: 0.1819952428, alpha: 1)
        tabBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBar.isTranslucent = false
        tabBar.layer.cornerRadius = 25
        tabBar.clipsToBounds = true
        tabBar.layer.masksToBounds = true
        
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
       
        viewControllers = [home,balance,bonuses,contacts,profile]
    }
    
}
