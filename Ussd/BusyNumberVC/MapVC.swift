//
//  MapVC.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit
import MapKit
import SnapKit
class MapVC: UIViewController {
  
    let topView          = UIView()
    let backButton       = UIButton()
    let searchBarButton  = UIButton()
    let ucellImage       = UIImageView()
    let appLogoLabel     = UILabel()
    let internetPackageLabel = UILabel()
    let plusZoomButton   = UIButton()
    let minusZoomButton  = UIButton()
    let navigationButton = UIButton()
    let mapView = MKMapView()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9052625299, green: 0.9539383054, blue: 0.9965327382, alpha: 1)
        initView()
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
         
        view.addSubview(mapView)
        mapView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom)
        }
        mapView.addSubview(minusZoomButton)
        minusZoomButton.clipsToBounds = true
        minusZoomButton.setImage(#imageLiteral(resourceName: "minus"), for: .normal)
        minusZoomButton.backgroundColor = #colorLiteral(red: 0.5531653762, green: 0, blue: 0.7783921361, alpha: 1)
        minusZoomButton.layer.cornerRadius = 23
        minusZoomButton.layer.borderWidth = 5.5
        minusZoomButton.layer.borderColor = #colorLiteral(red: 0.7189463973, green: 0.5364405513, blue: 0.838631928, alpha: 1)
        minusZoomButton.contentMode   = .scaleAspectFit
        minusZoomButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(mapView.snp.centerY)
            make.right.equalTo(mapView.snp.right).inset(15)
            make.width.height.equalTo(46)
        }
        mapView.addSubview(plusZoomButton)
        plusZoomButton.clipsToBounds = true
        plusZoomButton.setImage(#imageLiteral(resourceName: "plus"), for: .normal)
        plusZoomButton.backgroundColor = #colorLiteral(red: 0.5531653762, green: 0, blue: 0.7783921361, alpha: 1)
        plusZoomButton.layer.cornerRadius = 23
        plusZoomButton.layer.borderWidth = 5.5
        plusZoomButton.layer.borderColor = #colorLiteral(red: 0.7189463973, green: 0.5364405513, blue: 0.838631928, alpha: 1)
        plusZoomButton.contentMode   = .scaleAspectFit
        plusZoomButton.snp.makeConstraints { (make) in
            make.right.equalTo(minusZoomButton.snp.right)
            make.bottom.equalTo(minusZoomButton.snp.top).offset(-15)
            make.width.equalTo(minusZoomButton.snp.width)
            make.height.equalTo(minusZoomButton.snp.height)
            
        }
        mapView.addSubview(navigationButton)
        navigationButton.clipsToBounds = true
        navigationButton.setImage(#imageLiteral(resourceName: "navigation"), for: .normal)
        navigationButton.backgroundColor = #colorLiteral(red: 0.5531653762, green: 0, blue: 0.7783921361, alpha: 1)
        navigationButton.layer.cornerRadius = 35
        navigationButton.layer.borderWidth = 8.5
        navigationButton.layer.borderColor = #colorLiteral(red: 0.7189463973, green: 0.5364405513, blue: 0.838631928, alpha: 1)
        navigationButton.contentMode   = .scaleAspectFit
        navigationButton.snp.makeConstraints { (make) in
            make.right.equalTo(minusZoomButton.snp.right)
            make.bottom.equalTo(view.snp.bottom).offset(-30)
            make.width.height.equalTo(70)

            
        }
        
        
        
    }
}

