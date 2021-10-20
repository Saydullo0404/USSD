//
//  SideMenuCell.swift
//  Ussd
//
//  Created by 1 on 13/10/21.
//

import UIKit
import SnapKit
class SideMenuCell: UITableViewCell {
    let logoImage = UIImageView()
    let title = UILabel()
    let ucellLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
 
        
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.addSubview(logoImage)
        logoImage.image = #imageLiteral(resourceName: "XMLID_989_")
        logoImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top).offset(45)
            make.leading.equalToSuperview().inset(22)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        self.addSubview(title)
        title.text = "Hello"
        title.numberOfLines = 0
        title.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        title.snp.makeConstraints { (make) in
            make.centerY.equalTo(logoImage.snp.centerY)
            make.leading.equalTo(logoImage.snp.trailing).offset(23)
            
         }
        
        
        
        
    }
}
