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
        
        
        
        NavigationView { //cette zstack détermine la couleur rouge de tout l'écran, elle englobe tous les éléments de la vue principale
            
            ZStack {
                
                Color("main red")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("objective")
                            .resizable()
                            .frame(width: 255, height: 255)
                            .clipShape(Circle())
                            .padding(.bottom, 45.5)
                    }
                        
                    .frame(height: 150)
                    
                    VStack(alignment: .leading) {
                        Text("Menu principal")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.white))
                        
                        Divider()
                        
                        NavigationLink(destination: ChannelView()){
                            Text("Ajouter une chaîne").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        Button(action: {
                            self.showingSecondVC.toggle()
                        }){
                            Text("À Propos").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        .sheet(isPresented: $showingSecondVC){
                            SecondView()
                        }
                    }
                    .frame(height: 290)
                    // .frame(minWidth: 200, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity, alignment: Alignment.topLeading)
                    
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
