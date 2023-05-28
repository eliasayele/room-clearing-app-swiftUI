//
//  ContentView.swift
//  room_clearing
//
//  Created by Elias Ayele on 27/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 3
    
    var body: some View {
        
        TabView(selection: $selection)  {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house")
                }
                .tag(1)
            TransactionView()
                .tabItem {
                    Label("", systemImage: "list.bullet")
                }
                .tag(2)
            NotificationView()
                .tabItem {
                    Label("", systemImage: "bell")
                }
                .tag(3)
            ProfileView()
                .tabItem {
                    Label("", systemImage: "person")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
