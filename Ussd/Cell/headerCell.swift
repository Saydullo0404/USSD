//
//  headerCell.swift
//  Ussd
//
//  Created by 1 on 20/10/21.
//

import UIKit

class headerCell: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initView() {
        let pictureImage = UIImageView()
        self.addSubview(pictureImage)
        pictureImage.image = #imageLiteral(resourceName: "Image")
        pictureImage.clipsToBounds = true
        pictureImage.contentMode = .scaleAspectFill
        pictureImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
}
