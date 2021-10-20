//
//  HorizontalCollectionCell.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit

class HorizontalCollectionCell: UICollectionViewCell {
    let periodLabel = UILabel()
    let periofView  = UIView()
    override init(frame: CGRect) {
        super.init(frame: frame)
    initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initView(){
        self.addSubview(periodLabel)
        self.backgroundColor = #colorLiteral(red: 0.5294117647, green: 0, blue: 0.7960784314, alpha: 1)
        self.layer.cornerRadius = 8
        periodLabel.text = "МЕСЯЧНЫЕ"
        periodLabel.textAlignment = .center
        periodLabel.numberOfLines = .zero
        periodLabel.clipsToBounds = true
        periodLabel.font = .boldSystemFont(ofSize: 20)
        periodLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        periodLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.snp.centerY)
            make.centerX.equalTo(self.snp.centerX)
             
            
            
 
        }
    }
}
