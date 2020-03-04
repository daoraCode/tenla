//
//  ContentView.swift
//  Tenla
//
//  Created by Daora Rouge on 26/02/2020.
//  Copyright © 2020 Daora Rouge. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSecondVC: Bool = false
    
    var body : some View {
        
        
        
        NavigationView {
            //cette zstack détermine la couleur de tout l'écran, elle englobe tou les éléments de la vue principale
            ZStack {
                
                Color("main red")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("objective")
                            .resizable()
                            .frame(width:210, height:210, alignment: .center)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.1))
                    }.frame(height: 150)

                    
                    VStack(alignment: .leading) {
                        Text("Menu principal")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("jupiter yellow"))
                            .font(.system(size: 24))
                        Text("")
                            .font(.subheadline)
                        
                        Divider()
                        NavigationLink(destination: ChannelView()){
                            Text("Ajouter une chaîne").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        Button(action: {
                            self.showingSecondVC.toggle()
                        }){
                            Text("À Propos de Tenla").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        .sheet(isPresented: $showingSecondVC){
                            SecondView()
                        }
                    }
                    .frame(height: 300)
                }.padding()

                    .edgesIgnoringSafeArea(.bottom)
                
                
            }.navigationBarTitle("Tenla")

        }
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
