//
//  BonusesViewController.swift
//  Ussd
//
//  Created by 1 on 22/09/21.
//

import UIKit

class BonusesViewController: UIViewController {
    
    let myView         = UIView()
    let backRaundImage  = UIImageView()
    let ucellLabel      = UILabel()
    let businessLabel   = UILabel()
    let menuButton      = UIButton()
    let callButton      = UIButton()
    let bonusLabel      = UILabel()
    let bonusView       = UIView()
    let bonustitLabel   = UILabel()
    let oplataLabel     = UILabel()
    let arrowButton     = UIButton()
    let ucellView       = UIView()
    let ucellbonusLabel = UILabel()
    let paymetLabel     = UILabel()
    let loremLabel      = UILabel()
    let goButton        = UIButton()
    let toparrowButton  = UIButton()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.914218843, green: 0.9542967677, blue: 0.992067039, alpha: 1)
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
        view.addSubview(bonusLabel)
        bonusLabel.text = "Бонусы"
        bonusLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        bonusLabel.font = .systemFont(ofSize: 30)
        bonusLabel.snp.makeConstraints { make in
            make.top.equalTo(backRaundImage.snp.bottom).offset(35)
            make.left.equalToSuperview().inset(18)
            
        }
        view.addSubview(bonusView)
        bonusView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bonusView.layer.cornerRadius = 10
        bonusView.snp.makeConstraints { make in
            make.top.equalTo(bonusLabel.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(140)
        }
        bonusView.addSubview(bonustitLabel)
        bonustitLabel.text = "Бонус 404"
        bonustitLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        bonustitLabel.font = .boldSystemFont(ofSize: 20)
        bonustitLabel.snp.makeConstraints { make in
            make.top.equalTo(bonusView.snp.top).offset(20)
            make.left.equalToSuperview().inset(20)
            
        }
        bonusView.addSubview(oplataLabel)
        oplataLabel.text = "Абонентская плата: 10 000 sum Исходящие: 10 мин"
        oplataLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        oplataLabel.numberOfLines = 0
        oplataLabel.snp.makeConstraints { make in
            make.top.equalTo(bonustitLabel.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.width.equalToSuperview().multipliedBy(0.75)
        }
        bonusView.addSubview(arrowButton)
        arrowButton.setImage(UIImage(named: "Контур 43"), for: .normal)
        arrowButton.snp.makeConstraints { make in
            make.bottom.equalTo(bonusView.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
        }
        view.addSubview(ucellView)
        ucellView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        ucellView.layer.cornerRadius = 10
        ucellView.snp.makeConstraints { make in
            make.top.equalTo(bonusView.snp.bottom).offset(15)
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(300)
        }
        ucellView.addSubview(ucellbonusLabel)
        ucellbonusLabel.text = "Бонусы от Ucell"
        ucellbonusLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        ucellbonusLabel.font = .boldSystemFont(ofSize: 20)
        ucellbonusLabel.snp.makeConstraints { make in
            make.top.equalTo(ucellView.snp.top).offset(20)
            make.left.equalToSuperview().inset(15)
            
        }
        ucellView.addSubview(paymetLabel)
        paymetLabel.text = "Абонентская плата: 10 000 sum Исходящие: 10 мин"
        paymetLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        paymetLabel.numberOfLines = 0
        paymetLabel.snp.makeConstraints { make in
            make.top.equalTo(ucellbonusLabel.snp.bottom).offset(10)
            make.left.equalTo(15)
            make.width.equalToSuperview().multipliedBy(0.7)
            
        }
        ucellView.addSubview(loremLabel)
        loremLabel.text = """
Lorem ipsum dolor sit amet, consectetur
adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim agit.

"""
        loremLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        loremLabel.numberOfLines = 0
        loremLabel.snp.makeConstraints { make in
            make.top.equalTo(paymetLabel.snp.bottom).offset(10)
            make.width.equalToSuperview().multipliedBy(86)
            make.left.equalToSuperview().inset(15)
            
        }
        ucellView.addSubview(goButton)
        goButton.setTitle("Перейти на сайт", for: .normal)
        goButton.setTitleColor(.white, for: .normal)
        goButton.backgroundColor = #colorLiteral(red: 0.5294117647, green: 0, blue: 0.7960784314, alpha: 1)
        goButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        goButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        goButton.layer.shadowOpacity = 1.0
        goButton.layer.shadowRadius = 10.0
        goButton.layer.masksToBounds = false
        goButton.layer.cornerRadius = 10
        goButton.snp.makeConstraints { make in
            make.top.equalTo(loremLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(44)
            
        }
        ucellView.addSubview(toparrowButton)
        toparrowButton.setImage(UIImage(named: "Контур 43 (1)"), for: .normal)
        toparrowButton.snp.makeConstraints { make in
            make.bottom.equalTo(ucellView.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
        }
        
        
        
    }
    
    
    
    
    
}



