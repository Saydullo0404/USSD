//
//  NewStockCell.swift
//  Ussd
//
//  Created by 1 on 20/10/21.
//

import UIKit
import SnapKit


class NewStockCell: UICollectionViewCell {
    let newStockLabel    = UILabel()
    let newStockImage    = UIImageView()
    let infoOfStockLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 15
        self.addSubview(newStockLabel)
        newStockLabel.text = "Горячая новость от Ucell"
        newStockLabel.textColor = .black
        newStockLabel.font = .boldSystemFont(ofSize: 20)
        newStockLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(10)
            make.left.equalTo(self.snp.left).inset(10)
        }
        
        self.addSubview(newStockImage)
        newStockImage.image = #imageLiteral(resourceName: "Слой 1")
        newStockImage.backgroundColor = .red
        newStockImage.contentMode = .scaleAspectFill
        newStockImage.layer.cornerRadius = 10
        newStockImage.clipsToBounds = true
        newStockImage.snp.makeConstraints { make in
            make.top.equalTo(newStockLabel.snp.bottom).offset(10)
            make.left.equalTo(self.snp.left).inset(10)
            make.right.equalTo(self.snp.right).inset(10)
            make.height.equalTo(100)
 
            
        }
        self.addSubview(infoOfStockLabel)
        infoOfStockLabel.text = "Lorem ipsum dolor sit amet, consecteturadipisicing elit, sed do eiusmod tempor incididun"
        infoOfStockLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8)
        infoOfStockLabel.numberOfLines = .zero
        infoOfStockLabel.textAlignment = .left
        infoOfStockLabel.font = .systemFont(ofSize: 14)
        infoOfStockLabel.snp.makeConstraints { make in
            make.top.equalTo(newStockImage.snp.bottom).offset(10)
            make.left.equalTo(newStockImage.snp.left)
            make.right.equalTo(newStockImage.snp.right)
        }
        
        
 
    }
}
