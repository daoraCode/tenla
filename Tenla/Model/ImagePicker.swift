//
//  ImagePicker.swift
//  Tenla
//
//  Created by antony mboukou on 21/10/2020.
//  Copyright © 2020 Daora Rouge. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var inputImage: UIImage?
    let sourceType: UIImagePickerController.SourceType
    @Environment(\.presentationMode) var presentationMode
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let pickerController = UIImagePickerController()
        pickerController.delegate = context.coordinator
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            pickerController.sourceType = sourceType
        }
        return pickerController
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}


extension ImagePicker {
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let control: ImagePicker
        
        init(_ control: ImagePicker) {
            self.control = control
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                control.inputImage = uiImage
            }
            dismiss()
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss()
        }
        private func dismiss() {
            control.presentationMode.wrappedValue.dismiss()
        }
    }
}




//struct ImagePicker: UIViewControllerRepresentable {
//
//    let sourceType: UIImagePickerController.SourceType
//    @Environment(\.presentationMode) var presentationMode
//    @Binding var inputImage: UIImage?
//
//    typealias UIViewControllerType = UIImagePickerController
//    typealias Coordinator = ImagePickerCoordinator
//
////    var sourceType: UIImagePickerController.SourceType = .camera
//
//    func makeUIViewController(context: Context) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.sourceType = sourceType
//        picker.delegate = context.coordinator
//        return picker
//    }
//
//    func makeCoordinator() -> ImagePickerCoordinator {
//        Coordinator(self)
//    }
//
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
//    }
//}
//
//class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//    @Binding var image: UIImage?
//    init(image: Binding<UIImage?>) {
//        _image = image
//    }
//
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//            image = uiImage
//        }
//    }
//}
//
//struct ImagePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
