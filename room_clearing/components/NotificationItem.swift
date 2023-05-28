//
//  NotificationItem.swift
//  room_clearing
//
//  Created by Elias Ayele on 28/05/2023.
//

import SwiftUI

struct NotificationItem: View {
    var  notification: NotificationData
    
    var body: some View{
        HStack {
            if notification.users.count == 2 {
                ZStack(alignment: .leading) {
                    Image(notification.users[1].avatar)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        .offset(x: -7, y: -7)
                    
                    Image(notification.users.first!.avatar)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .offset(x: 7, y: 7)
                }
                .frame(width: 50, height: 60)
                .padding(.trailing,5)
            }else{
                Image(notification.users.first?.avatar ?? "mobilebutton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.trailing,5)
                
            }
            
            VStack(alignment: .leading,spacing: 3){
                
                Text("**\(getUserName(notification))**\(notification.message)")
                    .lineLimit(2)
                    .font(.system(size: 13,weight: .regular))
                
                Text(notification.time)
                    .font(.system(size: 11,weight: .medium))
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Image(notification.images.first ?? "mobilebutton")
                .resizable()
                .frame(width: 70, height: 50)
                .aspectRatio(contentMode: .fit)
            
        }
    }
}

extension NotificationItem {
    func getUserName(_ notification: NotificationData) -> String {
        var name = ""
        if !notification.users.isEmpty {
            name += notification.users[0].userName
        }
        if notification.users.count == 2 {
            name += " & "
        }
        if notification.users.count == 2 {
            name += notification.users[1].userName
        }
        return name.isEmpty ? "" : "\(name) "
    }
}

struct NotificationItem_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItem(notification: notificationData.first!)
    }
}
