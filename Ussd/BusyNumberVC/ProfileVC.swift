//
//  ProfileVC.swift
//  Ussd
//
//  Created by 1 on 20/10/21.
//

import UIKit
import SnapKit
class ProfileVC : UIViewController {
    
    let topView          = UIView()
    let backButton       = UIButton()
    let searchBarButton  = UIButton()
    let ucellImage       = UIImageView()
    let appLogoLabel     = UILabel()
    let profileLabel     = UILabel()
    let FIOLabel         = UILabel()
    let phoneNumberLabel = UILabel()
    let passportIDLabel  = UILabel()
    let nameSurnameTextField = UITextField()
    let phoneNumberTextField = UITextField()
    let passportIDTextField  = UITextField()
    let historyOFNumber      = UILabel()
    let saveButton           = UIButton()
    let resetButton          = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
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
        view.addSubview(profileLabel)
        profileLabel.text = "Профиль"
        profileLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        profileLabel.backgroundColor = .clear
        profileLabel.font = .boldSystemFont(ofSize: 30)
        profileLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(15)
            make.left.equalTo(backButton.snp.left)
        
        }
        view.addSubview(FIOLabel)
        FIOLabel.text = "ФИО"
        FIOLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        FIOLabel.backgroundColor = .clear
        FIOLabel.font = .systemFont(ofSize: 18)
        FIOLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileLabel.snp.bottom).offset(10)
            make.left.equalTo(profileLabel.snp.left)
        
        }
        
        view.addSubview(nameSurnameTextField)
        nameSurnameTextField.placeholder = " name surname"
        nameSurnameTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        nameSurnameTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nameSurnameTextField.layer.cornerRadius = 10
        nameSurnameTextField.snp.makeConstraints { make in
            make.top.equalTo(FIOLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(phoneNumberLabel)
        phoneNumberLabel.text = "Номер телефона"
        phoneNumberLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        phoneNumberLabel.backgroundColor = .clear
        phoneNumberLabel.font = .systemFont(ofSize: 18)
        phoneNumberLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameSurnameTextField.snp.bottom).offset(20)
            make.left.equalTo(nameSurnameTextField.snp.left)
        
        }
        view.addSubview(phoneNumberTextField)
        phoneNumberTextField.placeholder = " +998 90 123 45 67"
        phoneNumberTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        phoneNumberTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        phoneNumberTextField.layer.cornerRadius = 10
        phoneNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(10)
            make.width.equalTo(nameSurnameTextField.snp.width)
            make.height.equalTo(nameSurnameTextField.snp.height)
            make.left.equalTo(nameSurnameTextField.snp.left)
            
         }
        
        view.addSubview(passportIDLabel)
        passportIDLabel.text = "Паспорт серия"
        passportIDLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        passportIDLabel.backgroundColor = .clear
        passportIDLabel.font = .systemFont(ofSize: 18)
        passportIDLabel.snp.makeConstraints { (make) in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(20)
            make.left.equalTo(phoneNumberTextField.snp.left)
        
        }
        view.addSubview(passportIDTextField)
        passportIDTextField.placeholder = " AA 12345678 "
        passportIDTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        passportIDTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        passportIDTextField.layer.cornerRadius = 10
        passportIDTextField.snp.makeConstraints { make in
            make.top.equalTo(passportIDLabel.snp.bottom).offset(10)
            make.width.equalTo(nameSurnameTextField.snp.width)
            make.height.equalTo(nameSurnameTextField.snp.height)
            make.left.equalTo(passportIDLabel.snp.left)
            
         }
        
        view.addSubview(historyOFNumber)
        historyOFNumber.text = "История бронированных номеров"
        historyOFNumber.textColor = #colorLiteral(red: 0.5333333333, green: 0.007843137255, blue: 0.8039215686, alpha: 1)
        historyOFNumber.backgroundColor = .clear
        historyOFNumber.font = .systemFont(ofSize: 18)
        historyOFNumber.snp.makeConstraints { (make) in
            make.top.equalTo(passportIDTextField.snp.bottom).offset(28)
            make.left.equalTo(passportIDTextField.snp.left)
        
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
            make.bottom.equalTo(view.snp.bottom).offset(-30)
            make.width.equalTo(passportIDTextField.snp.width).multipliedBy(0.48)
            make.left.equalTo(passportIDTextField.snp.left)
            make.height.equalTo(54)
            
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
            make.right.equalTo(passportIDTextField.snp.right)
            make.centerY.equalTo(saveButton.snp.centerY)
 
            }
        
    }
     
    @objc func HemeTabBarController() {
        dismiss(animated: true, completion: nil)
    }

}

