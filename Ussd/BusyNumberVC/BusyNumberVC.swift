//
//  BusyNumberVC.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit
import SnapKit

class BusyNumberVC: UIViewController {
    
    let topView          = UIView()
    let backButton       = UIButton()
    let searchBarButton  = UIButton()
    let ucellImage       = UIImageView()
    let appLogoLabel     = UILabel()
    let busyNumberLabel  = UILabel()
    let saveButton       = UIButton()
    let resetButton      = UIButton()
    weak var locationOfDiller = UIButton()
    private let verticalBusyIdentifier   = "BusyOfNumCell"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        verticalCollectionOfNumView()
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
    view.addSubview(busyNumberLabel)
    busyNumberLabel.text = "Бронированные номера"
    busyNumberLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    busyNumberLabel.backgroundColor = .clear
    busyNumberLabel.font = .boldSystemFont(ofSize: 26)
    busyNumberLabel.snp.makeConstraints { (make) in
        make.top.equalTo(topView.snp.bottom).offset(15)
        make.left.equalTo(backButton.snp.left)
    
    }
    view.addSubview(saveButton)
    saveButton.setTitle("СОХРАНИТЬ", for: .normal)
    saveButton.setTitleColor(.white, for: .normal)
    saveButton.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.8, blue: 0.3921568627, alpha: 1)
    saveButton.layer.cornerRadius = 10
    saveButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    saveButton.layer.shadowOffset = .zero
    saveButton.layer.shadowRadius = 17
    saveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
    saveButton.snp.makeConstraints { make in
        make.bottom.equalTo(view.snp.bottom).offset(-60)
        make.width.equalTo(view.snp.width).multipliedBy(0.4)
        make.left.equalTo(busyNumberLabel.snp.left)
        make.height.equalTo(64)

        }
    view.addSubview(resetButton)
    resetButton.setTitle("СБРОСИТЬ", for: .normal)
    resetButton.setTitleColor(.white, for: .normal)
    resetButton.backgroundColor = #colorLiteral(red: 0.6431372549, green: 0.6431372549, blue: 0.6431372549, alpha: 1)
    resetButton.layer.cornerRadius = 10
    resetButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    resetButton.layer.shadowOffset = .zero
    resetButton.layer.shadowRadius = 17
    resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
    resetButton.snp.makeConstraints { make in
        make.width.equalTo(saveButton.snp.width)
        make.height.equalTo(saveButton.snp.height)
        make.right.equalTo(ucellImage.snp.right)
        make.centerY.equalTo(saveButton.snp.centerY)

        }
    
}
    
    func verticalCollectionOfNumView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.scrollDirection = .vertical
        let busyNumberOfCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(busyNumberOfCollectionView)
        busyNumberOfCollectionView.backgroundColor = .clear
        busyNumberOfCollectionView.dataSource = self
        busyNumberOfCollectionView.delegate = self
        busyNumberOfCollectionView.clipsToBounds = true
        busyNumberOfCollectionView.showsVerticalScrollIndicator = false
        busyNumberOfCollectionView.layer.cornerRadius = 15
      busyNumberOfCollectionView.register(BusyNumCell.self, forCellWithReuseIdentifier: verticalBusyIdentifier)
        busyNumberOfCollectionView.snp.makeConstraints { (make) in
            make.top.equalTo(busyNumberLabel.snp.bottom).offset(18)
            make.left.equalTo(busyNumberLabel.snp.left)
            make.right.equalTo(ucellImage.snp.right)
            make.bottom.equalTo(saveButton.snp.top).offset(-20)
 
            
        }
    }
}

extension BusyNumberVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:verticalBusyIdentifier , for: indexPath) as! BusyNumCell
        cell.busyNum.text = "+998 97 8008050"
        cell.locationOfDillerButton.tag = indexPath.item
        cell.locationOfDillerButton.addTarget(self, action: #selector(mapVC), for: .touchUpInside)
        
         return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.frame.width - 20, height: 180 )
        
        
    }
    @objc func HemeTabBarController() {
        dismiss(animated: true, completion: nil)
        
    }
    @objc func mapVC() {
       let vc = MapVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
    
    
}

