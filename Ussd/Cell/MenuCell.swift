//
//  MenuCell.swift
//  Ussd
//
//  Created by 1 on 28/09/21.
//

import UIKit

class MenuCell: UICollectionViewCell {
    let myView       = UIView()
    let fonImage     = UIImageView()
    let titleLabel   = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initView() {
        self.addSubview(myView)
        myView.backgroundColor = #colorLiteral(red: 0.991173923, green: 0.9963113666, blue: 1, alpha: 0.9000155215)
        myView.layer.cornerRadius = 15
        myView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        self.addSubview(fonImage)
        fonImage.image = UIImage(named: "Telefon")
        fonImage.contentMode = .scaleAspectFit
        fonImage.snp.makeConstraints { make in
            make.top.equalTo(myView.snp.top).offset(27)
            make.centerX.equalToSuperview()
            
        }
        myView.addSubview(titleLabel)
        titleLabel.text = "ЗАБРОНИРОВАТЬ НОМЕР"
        titleLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        titleLabel.numberOfLines = 0
        titleLabel.font = .systemFont(ofSize: 15)
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(fonImage.snp.bottom).offset(25)
            make.width.equalToSuperview().multipliedBy(0.75)
            make.centerX.equalToSuperview()
        }
        
    }
    
    
}
