//
//  MusicTableViewCell.swift
//  CodingChallenge_iTunes
//
//  Created by yan feng on 2019/5/1.
//  Copyright © 2019 Yan feng. All rights reserved.
//

import UIKit

class MusicTableViewCell: BaseTableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setUpCellUI() {
        self.addSubview(title)
        self.addSubview(iconImage)
        self.addSubview(typeLabel)
        iconImage.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(40)
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(70)
        }
        title.snp.makeConstraints { (make) in
            make.left.equalTo(iconImage.snp_right).offset(20)
            make.top.equalTo(iconImage)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(20)
        }
        typeLabel.snp.makeConstraints { (make) in
            make.left.equalTo(title)
            make.top.equalTo(title.snp_bottom).offset(10)
            make.height.equalTo(20)
            make.right.equalTo(title)
        }
        title.font = UIFont.systemFont(ofSize: 20)
        typeLabel.font = UIFont.systemFont(ofSize: 15)
        typeLabel.textColor = .lightGray
    }
    override func showCellData(model: Model) {
        title.text = model.title
        typeLabel.text = model.type
        iconImage.sd_setImage(with: URL(string: model.iconUrl), placeholderImage: UIImage(named: "placeholder.png"))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
