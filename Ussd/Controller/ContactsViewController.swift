//
//  ContactsViewController.swift
//  Ussd
//
//  Created by 1 on 22/09/21.
//

import UIKit

class ContactsViewController: UIViewController {
    let myView                     = UIView()
    let backRaundImage             = UIImageView()
    let ucellLabel                 = UILabel()
    let businessLabel              = UILabel()
    let menuButton                 = UIButton()
    let callButton                 = UIButton()
    let categoriesLabel            = UILabel()
    private  let celidenty         = "ContactViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        initViews()
    }
    func initViews() {
        let height = view.frame.height < 700 ? 120 : 150
        view.addSubview(myView)
        myView.backgroundColor = #colorLiteral(red: 0.5359873772, green: 0.027974464, blue: 0.8189654946, alpha: 1)
        myView.clipsToBounds = true
        myView.contentMode = .scaleAspectFill
        myView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        view.addSubview(backRaundImage)
        backRaundImage.image = #imageLiteral(resourceName: "Бокс (2)")
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
        view.addSubview(menuButton)
        menuButton.setImage(#imageLiteral(resourceName: "Контур 42"), for: .normal)
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
        callButton.setImage(#imageLiteral(resourceName: "search"), for: .normal)
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
        view.addSubview(categoriesLabel)
        categoriesLabel.text = "Все категории"
        categoriesLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        categoriesLabel.font = .boldSystemFont(ofSize: 25)
        categoriesLabel.snp.makeConstraints { make in
            make.top.equalTo(backRaundImage.snp.bottom).offset(35)
            make.left.equalToSuperview().inset(20)
        }
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(ContactViewCell.self, forCellWithReuseIdentifier: celidenty)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(categoriesLabel.snp.bottom).offset(20)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }
    

  

}

extension ContactsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celidenty, for: indexPath) as! ContactViewCell
        cell.tariffLabel.text = information[indexPath.item].catigiriatitle
        cell.tariffLabel.backgroundColor = information[indexPath.item].bacgraund
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 40)*1/2 , height: 120)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:  5, left: 10, bottom: 5 , right: 10)
    }
    
    
    
    
    
    
}

