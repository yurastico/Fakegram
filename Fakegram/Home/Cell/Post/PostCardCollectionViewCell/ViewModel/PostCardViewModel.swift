//
//  PostCardViewModel.swift
//  Fakegram
//
//  Created by Yuri Cunha on 05/11/23.
//

import UIKit

class PostCardViewModel {
    
    private var listPosts: [Post]
    
    init(listPosts: [Post]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loudCurrentPosts(indexPath: IndexPath) -> Post {
        listPosts[indexPath.row]
    }
    
}
