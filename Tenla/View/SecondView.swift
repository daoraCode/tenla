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
            VStack {
                
                
                Image("First icon")
                    .resizable()
                    .frame(width: 50.5, height: 50.5)
                    .padding(.bottom, 9)
                Divider()
                Image("40")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .zIndex(0)
                
                Text("Une minute papillon, c'est quoi Tenla... ? 🧐")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("main red"))
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                ScrollView {
                    Text("Découvrez une nouvelle façon de partager vos photos et vidéos, raconter vos meilleures aventures et partager les simplement grâce à Tenla. Parcourez différentes manières de montrer votre passion des images et lancez-vous sans plus attendre.")
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.all)
                }
                
                
            }
            
        }.background(Color("main yellow"))
            .edgesIgnoringSafeArea(.all)
        
    }
    
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
