//
//  NewStockVC.swift
//  Ussd
//
//  Created by 1 on 20/10/21.
//

import UIKit

class NewStockVC: UIViewController {
    
    let topView          = UIView()
    let backButton       = UIButton()
    let searchBarButton  = UIButton()
    let ucellImage       = UIImageView()
    let appLogoLabel     = UILabel()
    let internetPackageLabel = UILabel()
    let newsButton  = UIButton()
    let stockButton = UIButton()
    
    weak var verticalCollectionView:  UICollectionView!

    private let verticalStockIdentifier  = "NewStockCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9052625299, green: 0.9539383054, blue: 0.9965327382, alpha: 1)
        initView()
        initVerticalCollectionView()
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
        backButton.backgroundColor = #colorLiteral(red: 0.7585371137, green: 0.2168028653, blue: 0.9707439542, alpha: 1)
        backButton.addTarget(self, action: #selector(HemeTabBarController), for: .touchUpInside)
        backButton.layer.cornerRadius = 23
        backButton.layer.borderWidth = 5.5
        backButton.layer.borderColor = #colorLiteral(red: 0.6668625474, green: 0, blue: 0.9201352, alpha: 1)
        backButton.contentMode   = .scaleAspectFit
        backButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(topView.snp.centerY).offset(15)
            make.left.equalTo(topView.snp.left).inset(20)
            make.width.height.equalTo(46)
        }
        
        view.addSubview(searchBarButton)
        searchBarButton.clipsToBounds = true
        searchBarButton.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        searchBarButton.backgroundColor = #colorLiteral(red: 0.7585371137, green: 0.2168028653, blue: 0.9707439542, alpha: 1)
        searchBarButton.layer.cornerRadius = 23
        searchBarButton.layer.borderWidth = 5.5
        searchBarButton.layer.borderColor = #colorLiteral(red: 0.6668625474, green: 0, blue: 0.9201352, alpha: 1)
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
        view.addSubview(newsButton)
        newsButton.setTitle("НОВОСТИ", for: .normal)
        newsButton.setTitleColor(.white, for: .normal)
        newsButton.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.8, blue: 0.3921568627, alpha: 1)
        newsButton.layer.cornerRadius = 10
        newsButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        newsButton.layer.shadowOffset = .zero
        newsButton.layer.shadowRadius = 17
        newsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        newsButton.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(15)
            make.left.equalTo(backButton.snp.left)
            make.right.equalTo(view.snp.centerX).offset(-5)
            make.height.equalTo(70)
            
            }
        view.addSubview(stockButton)
        stockButton.setTitle("АКЦИИ", for: .normal)
        stockButton.setTitleColor(.white, for: .normal)
        stockButton.backgroundColor = #colorLiteral(red: 0.5294117647, green: 0, blue: 0.7960784314, alpha: 1)
        stockButton.layer.cornerRadius = 10
        stockButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        stockButton.layer.shadowOffset = .zero
        stockButton.layer.shadowRadius = 17
        stockButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        stockButton.snp.makeConstraints { make in
            make.width.equalTo(newsButton.snp.width)
            make.height.equalTo(newsButton.snp.height)
            make.right.equalTo(ucellImage.snp.right)
            make.centerY.equalTo(newsButton.snp.centerY)

            }
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
        verticalCollectionView.register(NewStockCell.self, forCellWithReuseIdentifier: verticalStockIdentifier)
        
        verticalCollectionView.snp.makeConstraints { (make) in
            make.top.equalTo(newsButton.snp.bottom).offset(20)
            make.left.equalTo(newsButton.snp.left)
            make.right.equalTo(stockButton.snp.right)
            make.bottom.equalTo(view.snp.bottom)
            
        }
        self.verticalCollectionView = verticalCollectionView
        
    }
    
    
}
extension NewStockVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: verticalStockIdentifier, for: indexPath) as! NewStockCell
        cell.newStockLabel.text = "Горячая новость от Ucell"
         return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.frame.width - 20, height: 220 )
        
        
    }
    
    
    @objc func HemeTabBarController() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
