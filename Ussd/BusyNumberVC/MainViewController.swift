//
//  MainViewController.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit
import SnapKit
class MainViewController: UIViewController {
    
    let topView          = UIView()
    let backButton       = UIButton()
    let searchBarButton  = UIButton()
    let ucellImage       = UIImageView()
    let appLogoLabel     = UILabel()
    let internetPackageLabel = UILabel()
    
    let dataOfHorCell      = MegabytesData.datasOfMegabytes
    let dataOfHorizCVModel : [MegabytesModul] = []
    
    let dataOfTarifVerCell = TarifData.tarifData
    let dataOfVerCellModel : [TarifModel] = []
    
    
   
    
    
    private let horizontalIdentifier = "HorizontalCollectionCell"
    private let verticalIdentifier   = "VerticalCollectionCell"
   
    private let horizontalCategoryIdentifier = "HorizontalCategoryCell"
    private let verticalCategoryIdentifier   = "VerticalCategoryCell"
    
    weak var horizontalCollection  : UICollectionView!
    weak var verticalCollectionView:  UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        initHorizontalCollectionView()
        initVerticalCollectionView()
        view.backgroundColor = #colorLiteral(red: 0.9052625299, green: 0.9539383054, blue: 0.9965327382, alpha: 1)
    }
    func initView() {
        view.addSubview(topView)
        topView.backgroundColor = #colorLiteral(red: 0.5294117647, green: 0, blue: 0.8, alpha: 1)
        topView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top)
            make.left.right.equalToSuperview()
            make.height.equalTo(180)
            
        }
        view.addSubview(backButton)
        backButton.clipsToBounds = true
        backButton.setImage(#imageLiteral(resourceName: "Контур 42"), for: .normal)
        backButton.addTarget(self, action: #selector(HemeTabBarController), for: .touchUpInside)
        backButton.backgroundColor = #colorLiteral(red: 0.7450980392, green: 0.3019607843, blue: 1, alpha: 1)
        backButton.layer.cornerRadius = 23
        backButton.layer.borderWidth = 5.5
        backButton.layer.borderColor = #colorLiteral(red: 0.5960784314, green: 0.1647058824, blue: 0.9215686275, alpha: 0.3272059359)
        backButton.contentMode   = .scaleAspectFit
        backButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(topView.snp.centerY).offset(15)
            make.left.equalTo(topView.snp.left).inset(20)
            make.width.height.equalTo(46)
        }
        
        view.addSubview(searchBarButton)
        searchBarButton.clipsToBounds = true
        searchBarButton.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        searchBarButton.backgroundColor = #colorLiteral(red: 0.7450980392, green: 0.3019607843, blue: 1, alpha: 1)
        searchBarButton.layer.cornerRadius = 23
        searchBarButton.layer.borderWidth = 5.5
        searchBarButton.layer.borderColor = #colorLiteral(red: 0.5960784314, green: 0.1647058824, blue: 0.9215686275, alpha: 0.3208985992)
        searchBarButton.contentMode   = .scaleAspectFit
        searchBarButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(backButton.snp.centerY)
            make.left.equalTo(backButton.snp.right).inset(-15)
            make.width.height.equalTo(46)
        }
        
        view.addSubview(ucellImage)
        ucellImage.image = #imageLiteral(resourceName: "Ucell")
        ucellImage.contentMode = .scaleAspectFit
        ucellImage.snp.makeConstraints { (make) in
            make.centerY.equalTo(searchBarButton.snp.centerY).offset(-15)
            make.right.equalTo(topView.snp.right).inset(10)
            make.width.equalTo(120)
            make.height.equalTo(35)
        }
        view.addSubview(appLogoLabel)
        appLogoLabel.text = "APP BUSINESS"
        appLogoLabel.textAlignment = .center
        appLogoLabel.textColor = #colorLiteral(red: 0.8980392157, green: 1, blue: 0.03137254902, alpha: 1)
        appLogoLabel.font = .boldSystemFont(ofSize: 26)
        appLogoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(ucellImage.snp.bottom).offset(10)
            make.right.equalTo(ucellImage.snp.right)
            
        }
        view.addSubview(internetPackageLabel)
        internetPackageLabel.text = "Интернет пакетлар"
        internetPackageLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        internetPackageLabel.backgroundColor = .clear
        internetPackageLabel.font = .boldSystemFont(ofSize: 26)
        internetPackageLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(15)
            make.left.equalTo(backButton.snp.left)
            
        }
        
        
        
    }
    
    func initHorizontalCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.scrollDirection = .horizontal
        let horizontalCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(horizontalCollection)
        horizontalCollection.dataSource = self
        horizontalCollection.delegate = self
        horizontalCollection.clipsToBounds = true
        horizontalCollection.showsHorizontalScrollIndicator = false
        horizontalCollection.layer.cornerRadius = 15
        horizontalCollection.backgroundColor = .clear
        horizontalCollection.register(HorizontalCollectionCell.self, forCellWithReuseIdentifier: horizontalIdentifier)
        
        horizontalCollection.snp.makeConstraints { (make) in
            make.top.equalTo(internetPackageLabel.snp.bottom).offset(18)
            make.left.equalTo(internetPackageLabel.snp.left)
            make.right.equalTo(ucellImage.snp.right)
            make.height.equalTo(80)
            
        }
        self.horizontalCollection = horizontalCollection
        
        
    }
    func initVerticalCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.scrollDirection = .vertical
        let verticalCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(verticalCollectionView)
        verticalCollectionView.backgroundColor = .clear
        verticalCollectionView.dataSource = self
        verticalCollectionView.delegate = self
        verticalCollectionView.clipsToBounds = true
        verticalCollectionView.showsVerticalScrollIndicator = false
        verticalCollectionView.layer.cornerRadius = 15
        verticalCollectionView.register(VerticalColectionViewCell.self, forCellWithReuseIdentifier: verticalIdentifier)
        
        verticalCollectionView.snp.makeConstraints { (make) in
            make.top.equalTo(horizontalCollection.snp.bottom).offset(25)
            make.left.equalTo(horizontalCollection.snp.left)
            make.right.equalTo(ucellImage.snp.right)
            make.bottom.equalTo(view.snp.bottom)
            
        }
        self.verticalCollectionView = verticalCollectionView
        
    }
    
    
    
}



extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (self.horizontalCollection == horizontalCollection){
            return dataOfHorCell.count
        } else{
            
            return dataOfTarifVerCell.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (self.horizontalCollection == collectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:horizontalIdentifier , for: indexPath) as! HorizontalCollectionCell
            cell.periodLabel.text = dataOfHorCell[indexPath.item].megabytesLabel
            
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: verticalIdentifier, for: indexPath) as! VerticalColectionViewCell
            
            cell.megabyteLabel.text = dataOfTarifVerCell[indexPath.item].sizeOfMegabyt
            
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(self.horizontalCollection == collectionView){
            
            return CGSize(width: (collectionView.frame.width)*2/5, height: 80 )
        }
        else {
            return CGSize(width: collectionView.frame.width - 20, height: 205 )
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if(self.horizontalCollection == collectionView){
            return UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 5 )
        }
        else {
            return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5 )
            
        }
       
    }
    @objc func HemeTabBarController() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
