//
//  HomeView.swift
//  Fakegram
//
//  Created by Yuri Cunha on 02/11/23.
//

import UIKit

class HomeView: UIView {

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell
            .identifier)
        collectionView.register(PostCardCollectionViewCell.self, forCellWithReuseIdentifier: PostCardCollectionViewCell.identifier)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackGround
        addSubview(collectionView)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints() {
        collectionView.pin(to: self)
    }
    

}
