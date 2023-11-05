//
//  StoryCardViewModel.swift
//  Fakegram
//
//  Created by Yuri Cunha on 03/11/23.
//

import Foundation

class StoryCardViewModel {
    
    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
        
    }
    
    public func loudCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }

}
