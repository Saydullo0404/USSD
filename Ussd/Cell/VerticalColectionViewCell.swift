//
//  VerticalColectionViewCell.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit

class VerticalColectionViewCell: UICollectionViewCell {
    
    let megabyteLabel = UILabel()
    let costlabel     = UILabel()
    let connectButton = UIButton()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initView(){
        
        self.addSubview(megabyteLabel)
        self.backgroundColor = .white
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
        megabyteLabel.text = "1000 мб"
        megabyteLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        megabyteLabel.font = .boldSystemFont(ofSize: 25)
        megabyteLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(15)
            make.left.equalTo(self.snp.left).inset(15)
        }
        self.addSubview(costlabel)
        costlabel.text = "Цена: 10 000 sumСрок действия: 30 дне Код: *101*1000# "
        costlabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        costlabel.numberOfLines = .zero
        costlabel.textAlignment = .left
        costlabel.font = .systemFont(ofSize: 14)
        costlabel.snp.makeConstraints { make in
            make.left.equalTo(megabyteLabel.snp.left)
            make.top.equalTo(megabyteLabel.snp.bottom).offset(10)
            make.width.equalTo(self.snp.width).multipliedBy(0.9)
        }
        self.addSubview(connectButton)
        connectButton.setTitle("Подключиться", for: .normal)
        connectButton.setTitleColor(.white, for: .normal)
        connectButton.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.8, blue: 0.3921568627, alpha: 1)
        connectButton.layer.cornerRadius = 8
        connectButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        connectButton.layer.shadowOffset = .zero
        connectButton.layer.shadowRadius = 17
        connectButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)

        connectButton.snp.makeConstraints { make in
            make.left.equalTo(costlabel.snp.left)
            make.bottom.equalTo(self.snp.bottom).offset(-25)
            make.height.equalTo(55)
            make.width.equalTo(155)
        }
    }
    
}
