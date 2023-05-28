//
//  NotificationDetailView.swift
//  room_clearing
//
//  Created by Elias Ayele on 28/05/2023.
//

import SwiftUI

struct NotificationDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showToast = false
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    uploadText
                    
                    pictureUploadDetail
                    
                    ZStack {
                        
                        dottedRectangle

                        VStack(spacing: 5) {
                            ZStack {
                                dottedCircle
                                
                                Image(systemName:"plus")
                                    .font(.system(size: 20,weight: .regular))
                            }
                            .padding(.bottom)
                            
                            Text("Add Images")
                                .font(.system(size: 20,weight: .regular))
                            HStack {
                                Text("Browse Files")
                                    .foregroundColor(Color(hex: "574EFA"))
                                    .font(.system(size:14,weight: .regular))
                                Text("from gallery or camera")
                                    .font(.system(size: 14,weight: .regular))
                            }
                            
                        }
                    }
                    .padding(.bottom)
                    
                    ZStack(alignment: .topTrailing) {
                        Image("image1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: 150)
                            .cornerRadius(8)
                        
                        Button(action: {
                            // Action for the X button
                        }) {
                            Image(systemName: "xmark")
                                .closeButtonStyle()
                        }
                        
                    }
                    Spacer().frame(height: 30)
                    
                    ZStack(alignment: .topTrailing) {
                        Image("image2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: 170)
                            .cornerRadius(8)
                        
                        Button(action: {
                            // Action for the X button
                        }) {
                            Image(systemName: "xmark")
                                .closeButtonStyle()
                        }
                        
                    }
                    .padding(.bottom)
                    
                    HStack {
                        Button(action: {
                            // Action for Back button
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Back")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(greyColor)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .font(.system(size: 16, weight: .bold))
                        }
                        .padding(.trailing, 12)
                        
                        Button(action: {
                            showToast = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                showToast = false
                                presentationMode.wrappedValue.dismiss()
                            }
                        }) {
                            Text("Submit")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(blueColor)
                                .foregroundColor(Color.white)
                                .cornerRadius(30)
                                .font(.system(size: 16, weight: .bold))
                        }
                    }
                    
                }
                Spacer()
            }
            //  .navigationBarTitleDisplayMode(.inline)
            //                    .navigationBarBackButtonHidden(true)
            //                    .toolbar {
            //                        ToolbarItem(placement: .navigationBarLeading) {
            //                            Image(systemName: "chevron.backward.circle.fill")
            //                                .foregroundColor(Color(hex: "F2F2F7"))
            //                                .font(.system(size: 25))
            //                                .onTapGesture {
            //                                    presentationMode.wrappedValue.dismiss()
            //                                }
            //
            //                        }
            //                    }
            
        }
        .toast(isShowing: $showToast, text: "Image sent successfully")
        .frame(maxWidth: UIScreen.main.bounds.width , alignment: .center)
        .padding(.horizontal)
        
        
    }
}

extension NotificationDetailView {
    var dottedRectangle : some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(style: StrokeStyle(lineWidth: 0.5, lineCap: .round,dash: [5,10]))
            .frame(width: getScreenWidth() * 0.95 , height: 180)
    }
    var dottedCircle : some View {
        Circle()
           .stroke(style: StrokeStyle(lineWidth: 0.5, lineCap: .round,dash: [3,5]))
           .frame(width: 40, height: 40)
    }
    
    var uploadText: some View {
        Text("Upload room clearing \npictures.")
            .font(.system(size: 28,weight: .bold))
            .lineLimit(2)
            .padding(.bottom)
    }
    var pictureUploadDetail : some View {
        Text("This is not sure by uploading the pictures, you’ll claim the cleaning service fees. It’ll take up-to 14 days to confirm claim.")
            .multilineTextAlignment(.leading)
            .padding(.bottom)
    }
    
}

struct NotificationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationDetailView()
    }
}
