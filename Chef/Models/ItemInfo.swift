//
//  ItemInfo.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import Foundation

struct ItemInfo: Codable, Hashable {
    let postID: String
    let title: String
    let location: String
    let updated: TimeInterval
    let price: Int
    let numOfChats: Int
    let numOfLikes: Int
    let thumbnailURL: String
}
