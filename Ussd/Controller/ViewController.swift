//
//  ViewController.swift
//  Ussd
//
//  Created by 1 on 16/09/21.
//

import UIKit
import SnapKit
import SideMenu


class ViewController: UIViewController, MenuControllerDelegate {
    func didSelectMenuItem(named: String) {
        
    }
    let backRaundImage = UIImageView()
    let ucellLabel     = UILabel()
    let businessLabel  = UILabel()
    let menuButton     = UIButton()
    let callButton     = UIButton()
    let pictureImage   = UIImageView()
    let myImage        = UIImageView()
    var celidenty      = "MenuCell"
    
    
    var sideMenu: SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        view.backgroundColor = #colorLiteral(red: 0.5279291868, green: 0.0007089460269, blue: 0.7986747026, alpha: 1)
    }
    func initViews() {
        let height = view.frame.height < 700 ? 120 : 150
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "iPhone X, XS, 11 Pro – 15 1")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        view.addSubview(image)
        image.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalToSuperview()
        }
        view.sendSubviewToBack(image)
        
        view.addSubview(myImage)
        myImage.backgroundColor = #colorLiteral(red: 0.5279291868, green: 0.0007089460269, blue: 0.7986747026, alpha: 1)
        myImage.clipsToBounds = true
        myImage.contentMode = .scaleAspectFill
        myImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        
        view.addSubview(backRaundImage)
        backRaundImage.backgroundColor = #colorLiteral(red: 0.5279291868, green: 0.0007089460269, blue: 0.7986747026, alpha: 1)
        backRaundImage.contentMode = .scaleAspectFill
        backRaundImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.right.equalToSuperview()
            make.height.equalTo(height)
        }
        
        view.addSubview(ucellLabel)
        ucellLabel.text = "Ucell"
        ucellLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ucellLabel.textAlignment = .right
        ucellLabel.font = .boldSystemFont(ofSize: 45)
        ucellLabel.snp.makeConstraints { make in
            make.bottom.equalTo(backRaundImage.snp.centerY)
            make.right.equalToSuperview().inset(15)
            
        }
        view.addSubview(businessLabel)
        businessLabel.text = "APP BUSINESS"
        businessLabel.textColor = #colorLiteral(red: 0.8980392157, green: 1, blue: 0.03137254902, alpha: 1)
        businessLabel.textAlignment = .right
        businessLabel.font = .boldSystemFont(ofSize: 20)
        businessLabel.snp.makeConstraints { make in
            make.top.equalTo(ucellLabel.snp.bottom)
            make.right.equalTo(ucellLabel.snp.right)
        }
        
       
        var menu = MenuListVC()
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        sideMenu?.menuWidth = (view.frame.width)*2/3
        sideMenu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        sideMenu?.navigationBar.clipsToBounds = true
        sideMenu?.navigationBar.barTintColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
       
        view.addSubview(menuButton)
        menuButton.addTarget(self, action: #selector(openSide), for: .touchUpInside)
        menuButton.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        menuButton.clipsToBounds = true
        menuButton.contentMode = .scaleAspectFill
        menuButton.layer.cornerRadius = 23
        menuButton.layer.borderWidth = 1.5
        menuButton.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.5745291805)
        menuButton.backgroundColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
        menuButton.snp.makeConstraints { make in
            make.centerY.equalTo(backRaundImage.snp.centerY)
            make.left.equalToSuperview().inset(10)
            make.height.width.equalTo(45)
        }
        view.addSubview(callButton)
        callButton.setImage(#imageLiteral(resourceName: "bell"), for: .normal)
        callButton.clipsToBounds = true
        callButton.contentMode = .scaleAspectFill
        callButton.layer.cornerRadius = 23
        callButton.layer.borderWidth = 1.5
        callButton.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.5745291805)
        callButton.backgroundColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
        callButton.snp.makeConstraints { make in
            make.centerY.equalTo(backRaundImage.snp.centerY)
            make.left.equalTo(view.snp.centerX).multipliedBy(0.35)
            make.width.height.equalTo(45)
            
        }
       
        let loyaut = UICollectionViewFlowLayout()
        loyaut.scrollDirection = .vertical
        loyaut.minimumLineSpacing = 20
        loyaut.minimumInteritemSpacing = 20
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: loyaut)
        view.addSubview(collectionView)
        collectionView.register(MenuCell.self, forCellWithReuseIdentifier: celidenty)
        collectionView.register(headerCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headercell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(backRaundImage.snp.bottom)
        }
        
        
       
        
        
    }
}




extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headercell", for: indexPath) as! headerCell
        
        return header
       
    }
    
  
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
       
        return CGSize(width: collectionView.frame.width, height: 200)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celidenty, for: indexPath) as! MenuCell
        cell.fonImage.image = data[indexPath.item].image
        cell.titleLabel.text = data[indexPath.item].title
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 60) / 2, height: 180)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:  20, left: 20, bottom: 20, right: 20)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch(indexPath.item) {
        case 0:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 1:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 2:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 3:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 4:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 5:
            let vc = NewStockVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 6:
            let vc = MainViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        default:
            let vc = BusyNumberVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
       
    }
    @objc func openSide() {
        present(sideMenu!, animated: true, completion: nil)
        
    }
 
    
    
}
