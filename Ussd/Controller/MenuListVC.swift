//
//  MenuListVC.swift
//  Ussd
//
//  Created by 1 on 13/10/21.
//

import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: String)
}
var identy = "SideMenuCell"
class MenuListVC: UITableViewController {
    let data = ["Наш телеграм канал","Наши контакты","О нас","Оцените нас","Язык"]
    let dataImage:[UIImage] = [#imageLiteral(resourceName: "telegram (1)"), #imageLiteral(resourceName: "phone-book (1)"), #imageLiteral(resourceName: "information"), #imageLiteral(resourceName: "like (1)"), #imageLiteral(resourceName: "Сгруппировать 32")]
    
    public var delegate: MenuControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 90
        tableView.backgroundColor = .white
        tableView.register(SideMenuCell.self, forCellReuseIdentifier: identy)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 70))
        view.backgroundColor = UIColor.clear

        var profileImageView = UIImageView(frame: CGRect(x: -60, y: 5, width: view.frame.size.width, height: 40))
        
        profileImageView.image = UIImage(named: "Ucell")
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .clear
        profileImageView.contentMode = .scaleAspectFit
        view.addSubview(profileImageView)
    
    
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identy, for: indexPath) as! SideMenuCell
        cell.title.text = data[indexPath.row]
        cell.logoImage.image = dataImage[indexPath.row]

        return cell
    }
    
    
    

}

