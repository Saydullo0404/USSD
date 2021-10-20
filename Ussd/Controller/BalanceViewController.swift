//
//  BalanceViewController.swift
//  Ussd
//
//  Created by 1 on 22/09/21.
//

import UIKit

class BalanceViewController: UIViewController {

    let myView         = UIView()
    let backRaundImage  = UIImageView()
    let ucellLabel      = UILabel()
    let businessLabel   = UILabel()
    let menuButton      = UIButton()
    let callButton      = UIButton()
    let registratLabel  = UILabel()
    let kodLabel        = UILabel()
    let activationLabel = UILabel()
    let textField       = UITextField()
    let redyButton      = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.914218843, green: 0.9542967677, blue: 0.9920671582, alpha: 1)
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
        view.addSubview(registratLabel)
        registratLabel.text = "Авторизация"
        registratLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        registratLabel.font = .boldSystemFont(ofSize: 25)
        registratLabel.snp.makeConstraints { make in
            make.top.equalTo(backRaundImage.snp.bottom).offset(90)
            make.centerX.equalToSuperview()
        }
        view.addSubview(kodLabel)
        kodLabel.text = "Введите код для активации"
        kodLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        kodLabel.snp.makeConstraints { make in
            make.top.equalTo(registratLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        view.addSubview(activationLabel)
        activationLabel.text = "Код активации"
        activationLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        activationLabel.snp.makeConstraints { make in
            make.top.equalTo(kodLabel.snp.bottom).offset(30)
            make.left.equalToSuperview().inset(20)
            
        }
        view.addSubview(textField)
        textField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.font = .systemFont(ofSize: 20)
        textField.text = "\t8392"
        textField.layer.cornerRadius = 10
        textField.textAlignment = .left
        textField.snp.makeConstraints { make in
            make.top.equalTo(activationLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        view.addSubview(redyButton)
        redyButton.setTitle("ГОТОВО", for: .normal)
        redyButton.setTitleColor(.white, for: .normal)
        redyButton.backgroundColor = #colorLiteral(red: 0, green: 0.8147656918, blue: 0.3360695243, alpha: 1)
        redyButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        redyButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        redyButton.layer.shadowOpacity = 1.0
        redyButton.layer.shadowRadius = 10.0
        redyButton.layer.masksToBounds = false
        redyButton.layer.cornerRadius = 12
        redyButton.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(200)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        
        
        
    }
    

   
}
