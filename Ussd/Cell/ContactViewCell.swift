//
//  ContactViewCell.swift
//  Ussd
//
//  Created by 1 on 07/10/21.
//

import UIKit

class ContactViewCell: UICollectionViewCell {
    
    let tariffLabel    = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        
        self.addSubview(tariffLabel)
        tariffLabel.text = "SPECIAL PLUS 300 номеров"
        tariffLabel.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.8, blue: 0.3921568627, alpha: 1)
        tariffLabel.textColor = .white
        tariffLabel.numberOfLines = .zero
        tariffLabel.layer.cornerRadius = 13
        tariffLabel.textAlignment = .center
        tariffLabel.font = .systemFont(ofSize: 18)
        tariffLabel.clipsToBounds = true
        tariffLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(5)
            make.centerY.equalTo(self.snp.centerY)
            make.height.equalTo(115)
            
        }
        
        
    }
    

}







