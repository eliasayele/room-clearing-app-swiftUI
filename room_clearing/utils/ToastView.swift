//
//  ToastView.swift
//  room_clearing
//
//  Created by Elias Ayele on 28/05/2023.
//

import SwiftUI
extension View {
    func toast(isShowing: Binding<Bool>, text: String) -> some View {
        ZStack {
            self

            if isShowing.wrappedValue {
                ToastView(text: text)
            }
        }
    }
}

struct ToastView: View {
    let text: String

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text(text)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                    .shadow(radius: 5)

            }
            .frame(width: geometry.size.width * 0.7,alignment: .center)
            .transition(.slide)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .padding()
    }
}
