//
//  NotificationData.swift
//  room_clearing
//
//  Created by Elias Ayele on 27/05/2023.
//

import Foundation
struct NotificationData: Hashable {
    
    let time: String
    let users: [User]
    let images: [String]
    let message: String
}

struct User:Hashable {
    let userName: String
    let avatar: String
}

let user1 = User(userName: "sugeevan_svg", avatar: "avatar1")
let user2 = User(userName: "stella_sf", avatar: "avatar3")
let user3 = User(userName: "maria_2", avatar: "avatar2")
let user4 = User(userName: "jamestalan", avatar: "avatar4")

let notificationData = [
    NotificationData(
        time: "5 Min Ago",
        users: [],
        images: ["image1", "image2"],
        message: "Why don’t you claim a fees by cleaning the room @stella_jue"
    ),
    NotificationData(
        time: "Just now",
        users: [user2],
        images: ["image2"],
        message: "Now you can give a review to stella_sf’s place"
    ),
    NotificationData(
        time: "28 Min Ago",
        users: [user2, user4],
        images: ["image1"],
        message: "send you a proposal."
    ),
    NotificationData(
        time: "23 March, 2023",
        users: [user3],
        images: ["image2"],
        message: "give you a review: @konsikan exactly.."
    )
]
