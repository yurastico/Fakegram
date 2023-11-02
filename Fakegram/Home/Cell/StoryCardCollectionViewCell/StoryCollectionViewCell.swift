//
//  StoryCollectionViewCell.swift
//  Fakegram
//
//  Created by Yuri Cunha on 02/11/23.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell {
    static let identifier = "StoryCollectionViewCell"
    private var cardContent: StoryCardCollectionViewCellContent = StoryCardCollectionViewCellContent()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        cardContent.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(cardContent)
        cardContent.pin(to: contentView)
    }
}
