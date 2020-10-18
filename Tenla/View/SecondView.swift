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
    
    //    @State private var videoTitle = ""
    //    @State private var videoContent = ""
    
    
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
               
                
                
                VStack {

                    Image("First icon")
                        .resizable()
                        .frame(width: 50.5, height: 50.5)
                        .padding(.bottom, 45.5)
                    
                    Divider()
                    
                    Text("Une minute papillon, c'est quoi Tenla... ? 🧐")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    
                    ScrollView {
                        Text("Découvrez une nouvelle façon de partager vos photos et vidéos, raconter vos meilleures aventures et partager les simplement grâce à Tenla. Parcourez différentes manières de montrer votre passion des images et lancez-vous sans plus attendre.")
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .padding(.all)
                    }
                    .frame(height: 390)
                   
                }
                
            }
            
        }
        
    }
    
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
