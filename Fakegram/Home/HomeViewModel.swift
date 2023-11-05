//
//  HomeViewModel.swift
//  Fakegram
//
//  Created by Yuri Cunha on 02/11/23.
//

import Foundation

final class HomeViewModel {
    public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath,frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    
    private var story = [
        Stories(image: "img1", username: "Add Story"),
        Stories(image: "img2", username: "jack"),
        Stories(image: "img3", username: "carolina"),
        Stories(image: "img4", username: "samuel"),
        Stories(image: "img5", username: "ariana josep"),
        Stories(image: "img6", username: "puggy_101"),
        Stories(image: "img7", username: "dheeraj_ks")
    ]
    
    public var getListStory: [Stories] {
        return story
    }
    
    private var posts = [
        Post(profileImage: "img2", username: "jack", postImage: "post1"),
        Post(profileImage: "img4", username: "samuel", postImage: "post2"),
        Post(profileImage: "img3", username: "carolina", postImage: "post3"),
        Post(profileImage: "img6", username: "puggy_101", postImage: "post4")
    ]
    
    public var getListPosts: [Post] {
        posts
    }
    
}
