//
//  NotificationView.swift
//  room_clearing
//
//  Created by Elias Ayele on 27/05/2023.
//

import SwiftUI

struct NotificationView: View {
    @State var shouldShowDetailScreen = false
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Today")
                        .timeTextStyle()
                    
                    ForEach(notificationData,id: \.self) { notification in
                        NotificationItem(notification: notification)
                            .onTapGesture {
                                shouldShowDetailScreen.toggle()
                            }
                    }  
                    Text("This Week")
                        .timeTextStyle()
                    
                    NotificationItem(notification: notificationData.first!)
                        .onTapGesture {
                            shouldShowDetailScreen.toggle()
                        }
                    
                    Text("This Month")
                        .timeTextStyle()
                    
                    ForEach(notificationData,id: \.self) { notification in
                        NotificationItem(notification: notification)
                            .onTapGesture {
                                shouldShowDetailScreen.toggle()
                            }
                        
                    }
                    Text("Earlier")
                        .timeTextStyle()
                    
                    ForEach(notificationData,id: \.self) { notification in
                        NotificationItem(notification: notification)
                            .onTapGesture {
                                shouldShowDetailScreen.toggle()
                            }
                        
                    }
                    
                }
                NavigationLink(destination: NotificationDetailView(),isActive: $shouldShowDetailScreen){EmptyView()}
            }
            
            .frame(maxWidth: getScreenWidth() , alignment: .leading)
            .padding()
            .navigationTitle("Notification")
        }
        
        
    }
}



struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
