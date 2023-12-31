//
//  HomeViewController.swift
//  Fakegram
//
//  Created by Yuri Cunha on 02/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeView: HomeView?
    private var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        self.homeView = HomeView()
        self.view = self.homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeView?.collectionView.delegate = self
        homeView?.collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as? StoryCardCollectionViewCell
            else { 
                fatalError("deu pau no StoryCardCollectionViewCell")
                }
            cell.setupCell(listStory: viewModel.getListStory)
            return cell
            
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCardCollectionViewCell.identifier, for: indexPath) as? PostCardCollectionViewCell
            else {
                fatalError("deu pau no StoryCardCollectionViewCell")
                }
            cell.setupCell(listPosts: viewModel.getListPosts)
            return cell
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
}
