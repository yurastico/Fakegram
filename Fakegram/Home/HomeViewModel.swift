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
}
