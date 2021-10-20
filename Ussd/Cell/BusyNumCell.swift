//
//  BusyNumCell.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit

class BusyNumCell: UICollectionViewCell {
    let busyNum                 = UILabel()
    let categoryOfBusyNum       = UILabel()
    let locationOfDillerButton  = UIButton()
    let categoryLabel           =  UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 13
        
        self.addSubview(busyNum)
        busyNum.text = "+998 97 8008050"
        busyNum.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        busyNum.numberOfLines = .zero
        busyNum.textAlignment = .left
        busyNum.font = .boldSystemFont(ofSize: 20)
        busyNum.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(20)
            make.left.equalTo(self.snp.left).inset(20)
            
        }
        
        self.addSubview(categoryLabel)
        categoryLabel.text = "Категория: PLATINUMЦена: 550 000 сум"
        categoryLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        categoryLabel.numberOfLines = .zero
        categoryLabel.textAlignment = .left
        categoryLabel.font = .systemFont(ofSize: 14)
        categoryLabel.snp.makeConstraints { make in
            make.top.equalTo(busyNum.snp.bottom).offset(10)
            make.left.equalTo(busyNum.snp.left)
            make.right.equalTo(self.snp.right)
            
        }
        
        
        self.addSubview(locationOfDillerButton)
        locationOfDillerButton.setTitle("Локация диллера", for: .normal)
        locationOfDillerButton.setTitleColor(.white, for: .normal)
        locationOfDillerButton.backgroundColor = #colorLiteral(red: 0.5294117647, green: 0, blue: 0.7960784314, alpha: 1)
        locationOfDillerButton.layer.cornerRadius = 10
        locationOfDillerButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        locationOfDillerButton.layer.shadowOffset = .zero
        locationOfDillerButton.layer.shadowRadius = 17
        locationOfDillerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        locationOfDillerButton.snp.makeConstraints { make in
            
            make.bottom.equalTo(self.snp.bottom).offset(-20)
            make.left.equalTo(categoryLabel.snp.left)
            make.width.equalTo(self.snp.width).multipliedBy(0.48)
            make.height.equalTo(54)
            

            }
       
        
    }
    
 
    
}



