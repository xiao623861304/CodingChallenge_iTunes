//
//  AppsTableViewCell.swift
//  CodingChallenge_iTunes
//
//  Created by yan feng on 2019/5/1.
//  Copyright © 2019 Yan feng. All rights reserved.
//

import UIKit

class AppsTableViewCell: BaseTableViewCell {

    let bottomView = UIView()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setUpCellUI() {
        self.addSubview(iconImage)
        self.addSubview(bottomView)
        bottomView.addSubview(title)
        bottomView.addSubview(typeLabel)
        iconImage.snp.makeConstraints { (make) in
            make.left.top.equalToSuperview().offset(5)
            make.right.bottom.equalToSuperview().offset(-5)
        }
        bottomView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(iconImage)
            make.height.equalTo(70)
        }
        
        title.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(20)
        }
        typeLabel.snp.makeConstraints { (make) in
            make.left.equalTo(title)
            make.top.equalTo(title.snp_bottom).offset(10)
            make.height.equalTo(20)
            make.right.equalTo(title)
        }
        bottomView.backgroundColor = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.8)
        title.font = UIFont.systemFont(ofSize: 20)
        typeLabel.font = UIFont.systemFont(ofSize: 15)
        title.textAlignment = .center
        title.textColor = .white
        typeLabel.textAlignment = .center
        typeLabel.textColor = .lightGray
    }

    override func showCellData(model: Model) {
        title.text = model.title
        iconImage.sd_setImage(with: URL(string: model.iconUrl), placeholderImage: UIImage(named: "placeholder.png"))
        typeLabel.text = model.type

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
