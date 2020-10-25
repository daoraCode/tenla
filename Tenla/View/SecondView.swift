//
//  SecondView.swift
//  Tenla
//
//  Created by Daora Rouge on 27/02/2020.
//  Copyright © 2020 Daora Rouge. All rights reserved.
//

import SwiftUI

struct SecondView: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // @State private var videoTitle = ""
    // @State private var videoContent = ""
    @Binding var dismissSheetAbout: Bool
    
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
               
//                Color("jupiter yellow")
//
//                    .edgesIgnoringSafeArea(.vertical)
                
                VStack {

                    Image("First icon")
                        .resizable()
                        .frame(width: 54.5, height: 54.5)
                        .padding(.bottom, 32)
                    
                    Divider()
                    
                    Text("Une minute papillon, c'est quoi Tenla... ? 🧐")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.trailing)
                        .padding(.all)
                    
                    ScrollView {
                        Text("Découvrez une nouvelle façon de partager vos photos et vidéos, raconter vos meilleures aventures et partager les simplement grâce à Tenla. Parcourez différentes manières de montrer votre passion des images et lancez-vous sans plus attendre.")
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .padding(.all)
                    }
//                    .frame(height: )
                   
                }
                
            }
            .navigationBarItems(trailing: Button(action: {
                                            self.dismissSheetAbout.toggle()
                                           }, label: {
                                            Text("OK")
                                           })
                                    )
            
        }
        
    }
    
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(dismissSheetAbout: .constant(false))
    }
}
