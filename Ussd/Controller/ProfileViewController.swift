//
//  ProfileViewController.swift
//  Ussd
//
//  Created by 1 on 22/09/21.
//

import UIKit

class ProfileViewController: UIViewController {

    
    let myView                     = UIView()
    let backRaundImage             = UIImageView()
    let ucellLabel                 = UILabel()
    let businessLabel              = UILabel()
    let menuButton                 = UIButton()
    let callButton                 = UIButton()
    let reservationLabel           = UILabel()
    let fullnameLabel              = UILabel()
    let familynameText             = UITextField()
    let documentLabel              = UILabel()
    let passworTextField           = UITextField()
    let arrowButton                = UIButton()
    let seriesdocumenLabel         = UILabel()
    let seriespasswordTextField    = UITextField()
    let arrowView                  = UIView()
    let cursorButton               = UIButton()
    let argumentLabel              = UILabel()
    let booknowButton              = UIButton()
    let cancelButton               = UIButton()
  
    
    
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
        view.addSubview(reservationLabel)
        reservationLabel.text = "Бронирование номера"
        reservationLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        reservationLabel.font = .boldSystemFont(ofSize: 25)
        reservationLabel.snp.makeConstraints { make in
            make.top.equalTo(backRaundImage.snp.bottom).offset(35)
            make.left.equalToSuperview().inset(20)
            
        }
        view.addSubview(fullnameLabel)
        fullnameLabel.text = "Введите ваше ФИО"
        fullnameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        fullnameLabel.snp.makeConstraints { make in
            make.top.equalTo(reservationLabel.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
        }
        view.addSubview(familynameText)
        familynameText.placeholder = "\tИван Иванов Иванович"
        familynameText.backgroundColor = .white
        familynameText.layer.cornerRadius = 12
        familynameText.snp.makeConstraints { make in
            make.top.equalTo(fullnameLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        view.addSubview(documentLabel)
        documentLabel.text = "Выберите тип документа"
        documentLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        documentLabel.snp.makeConstraints { make in
            make.top.equalTo(familynameText.snp.bottom).offset(20)
            make.left.equalToSuperview().inset(20)
            
        }
        view.addSubview(passworTextField)
        passworTextField.text = "\tПаспорт РУз"
        passworTextField.backgroundColor = .white
        passworTextField.layer.cornerRadius = 12
        passworTextField.snp.makeConstraints { make in
            make.top.equalTo(documentLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        passworTextField.addSubview(arrowButton)
        arrowButton.setImage(UIImage(named: "Контур 43"), for: .normal)
        arrowButton.snp.makeConstraints { make in
            make.top.equalTo(passworTextField.snp.top).offset(15)
            make.right.equalToSuperview().inset(20)
        }
        view.addSubview(seriesdocumenLabel)
        seriesdocumenLabel.text = "Введите серию и номер документа"
        seriesdocumenLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        seriesdocumenLabel.snp.makeConstraints { make in
            make.top.equalTo(passworTextField.snp.bottom).offset(20)
            make.left.equalToSuperview().inset(20)
        }
        view.addSubview(seriespasswordTextField)
        seriespasswordTextField.placeholder = "\tAA 12345678 "
        seriespasswordTextField.backgroundColor = .white
        seriespasswordTextField.layer.cornerRadius = 12
        seriespasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(seriesdocumenLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        view.addSubview(arrowView)
        arrowView.backgroundColor = .white
        arrowView.snp.makeConstraints { make in
            make.top.equalTo(seriespasswordTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().inset(20)
            make.width.height.equalTo(25)
        }
        arrowView.addSubview(cursorButton)
        cursorButton.setImage(UIImage(named: "Контур 45"), for: .normal)
        cursorButton.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view.addSubview(argumentLabel)
        argumentLabel.text = "Я принимаю пользовательское соглашение"
        argumentLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        argumentLabel.numberOfLines = 0
        argumentLabel.clipsToBounds = true
        argumentLabel.snp.makeConstraints { make in
            make.top.equalTo(seriespasswordTextField.snp.bottom).offset(30)
            make.left.equalTo(arrowView.snp.right).inset(-15)
            make.width.equalToSuperview().multipliedBy(0.83)
            
        }
        view.addSubview(booknowButton)
        booknowButton.setTitle("ЗАБРОНИРОВАТЬ", for: .normal)
        booknowButton.setTitleColor(.white, for: .normal)
        booknowButton.backgroundColor = #colorLiteral(red: 0, green: 0.8147656918, blue: 0.3360695243, alpha: 1)
        booknowButton.layer.cornerRadius = 12
        booknowButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        booknowButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        booknowButton.layer.shadowOpacity = 1.0
        booknowButton.layer.shadowRadius = 10.0
        booknowButton.layer.masksToBounds = false
        booknowButton.snp.makeConstraints { make in
            make.top.equalTo(argumentLabel.snp.bottom).offset(55)
            make.left.equalToSuperview().inset(20)
            make.width.equalTo(165)
            make.height.equalTo(65)
        }
        view.addSubview(cancelButton)
        cancelButton.setTitle("ОТМЕНИТЬ", for: .normal)
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.backgroundColor = #colorLiteral(red: 0.6431372549, green: 0.6431372549, blue: 0.6431372549, alpha: 1)
        cancelButton.layer.cornerRadius = 12
        cancelButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        cancelButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        cancelButton.layer.shadowOpacity = 1.0
        cancelButton.layer.shadowRadius = 10.0
        cancelButton.layer.masksToBounds = false
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(argumentLabel.snp.bottom).offset(55)
            make.left.equalTo(booknowButton.snp.right).inset(-25)
            make.width.equalTo(165)
            make.height.equalTo(65)
        }
        
        
    }
   
    
    
    @objc func openTapped() {
        let ac = UIAlertController(title: "Паспорт РУз", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Военный билет", style: .default, handler: nil))
        ac.addAction(UIAlertAction(title: "Вид на жительство", style: .default, handler: nil))
        ac.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true, completion: nil)
    
    }

   
    
     



  
}

