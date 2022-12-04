//
//  ItemInfoCell.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import UIKit
import Kingfisher

class ItemInfoCell: UICollectionViewCell {
    
    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var numberOfChatLabel: UILabel!
    @IBOutlet var numberOfLikeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 10
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.tintColor = .systemGray
    }
    
    func configureUI(item: ItemInfo) {
        titleLabel.text = item.title
        descriptionLabel.text = item.location
        priceLabel.text = "\(formatNumber(item.price))원"

        numberOfChatLabel.text = "\(item.numOfChats)"
        numberOfChatLabel.text = "\(item.numOfLikes)"

        thumbnailImageView.kf.setImage(
        with: URL(string: item.thumbnailURL),
        //            with: URL(string: ""),
        placeholder: UIImage(systemName: "hands.sparkles.fill")
    )

    }
    
    private func formatNumber(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal

        let result = formatter.string(from: NSNumber(integerLiteral: price)) ?? ""
        return result
    }
    
}
