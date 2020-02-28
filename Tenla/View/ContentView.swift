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
            
            VStack{
                
                
                Color("main yellow")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Text("Menu principal")
                        .fontWeight(.regular)
                    Text("")
                        .font(.subheadline)
                    Divider()
                    NavigationLink(destination: ChannelView()){
                        Text("Ajouter une chaîne")
                    }
                    Button(action: {
                        self.showingSecondVC.toggle()
                    }){
                        Text("À Propos de Tenla")
                    }.sheet(isPresented: $showingSecondVC){
                        SecondView()
                    }
                    Spacer()
                }.padding()
                Color("main yellow")
                    .edgesIgnoringSafeArea(.bottom)
                
                
                
            }.navigationBarTitle("Tenla")
                .background(Color("main yellow"))
        }
        
    }
    
}
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}
