//
//  Styles.swift
//  room_clearing
//
//  Created by Elias Ayele on 28/05/2023.
//

import SwiftUI



extension Text {
    func timeTextStyle() -> some View {
        self
        .font(.system(size: 15, weight: .semibold))
        .padding(.trailing, 8)
    }
}

extension Image {
    func closeButtonStyle() -> some View {
        self
            .foregroundColor(.black)
            .padding()
            .background(Color.white)
            .clipShape(Circle())
            .frame(width: 60, height: 60)
    }
}

