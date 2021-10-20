//
//  BlockedViewController.swift
//  Ussd
//
//  Created by 1 on 05/10/21.
//

import UIKit

class BlockedViewController: UIViewController {
    
    let myImage         = UIImageView()
    let backRaundImage  = UIImageView()
    let ucellLabel      = UILabel()
    let businessLabel   = UILabel()
    let menuButton      = UIButton()
    let callButton      = UIButton()
    let nomerLabel      = UILabel()
    let vhicheLabel     = UILabel()
    let nextButton      = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.914218843, green: 0.9542967677, blue: 0.992067039, alpha: 1)
        initViews()

        
    }
    func initViews() {
        let height = view.frame.height < 700 ? 120 : 150
        view.addSubview(myImage)
        myImage.image = #imageLiteral(resourceName: "head3 1")
        myImage.clipsToBounds = true
        myImage.contentMode = .scaleAspectFill
        myImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        view.addSubview(backRaundImage)
        backRaundImage.image = #imageLiteral(resourceName: "head3 1")
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
        menuButton.addTarget(self, action: #selector(HemeTabBarController), for: .touchUpInside)
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
        view.addSubview(nomerLabel)
        nomerLabel.text = """
Номер +998 90 8008050 забронирован!
Вы можете забрать ваш номер у диллера
по этому адресу: Yunusobad, 2 Shaxriston.
Спасибо за вашу заявку!

Незабудьте взять с собой паспорт!

"""
        nomerLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        nomerLabel.numberOfLines = 0
        nomerLabel.snp.makeConstraints { make in
            make.top.equalTo(backRaundImage.snp.bottom).offset(120)
            make.centerX.equalToSuperview()
        }
        view.addSubview(vhicheLabel)
        vhicheLabel.text = "Посмотреть локацию диллера на карте"
        vhicheLabel.textColor = #colorLiteral(red: 0.5333333333, green: 0.007843137255, blue: 0.8039215686, alpha: 1)
        vhicheLabel.snp.makeConstraints { make in
            make.top.equalTo(nomerLabel.snp.bottom).offset(65)
            make.centerX.equalToSuperview()
        }
        view.addSubview(nextButton)
        nextButton.setTitle("ГОТОВО", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.8, blue: 0.3921568627, alpha: 1)
        nextButton.layer.cornerRadius = 15
        nextButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        nextButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        nextButton.layer.shadowOpacity = 1.0
        nextButton.layer.shadowRadius = 10.0
        nextButton.layer.masksToBounds = false
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(vhicheLabel.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
            make.width.equalTo(160)
            make.height.equalTo(65)
        }
        
        
        
        
        
        
        
        
    }
    @objc func HemeTabBarController() {
        dismiss(animated: true, completion: nil)
        
    }
}
