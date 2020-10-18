//
//  CameraView.swift
//  Tenla
//
//  Created by antony mboukou on 13/10/2020.
//  Copyright © 2020 Daora Rouge. All rights reserved.
//

import SwiftUI

struct CameraView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("main red")
                    .edgesIgnoringSafeArea(.all)
                Image("imagePlaceholder")
                    .resizable()
                    .frame(width: 200, height: 200)
                    
                    
        Spacer()
               ZStack {
                    Button("Choose Picture") {
                        self.showSheet = true
                    }.padding()
                    .actionSheet(isPresented: $showSheet) {
                        ActionSheet(title: Text("Select a photo"), message: Text("Choose"), buttons: [
                            .default(Text("Photo Library")) {
                                self.showImagePicker = true
                                self.sourceType = .photoLibrary
                            },
                            .default(Text("Camera")) {
                                self.showImagePicker = true
                                self.sourceType = .camera
                            },
                            .cancel()
                        ])
                        
                    }
                }
            }
            
            .navigationBarTitle("Camera")
        }.sheet(isPresented: $showImagePicker) {
            Text("MODAL")
        }
    }
}
struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
