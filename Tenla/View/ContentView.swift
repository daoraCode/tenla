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
            
            ZStack {
                
                Color("main red")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("lemon")
                            .resizable()
                            .frame(width:210, height:210, alignment: .center)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.1))
                    }.frame(height: 150)
                    //                    Spacer()
                    
                    //                        .padding(.bottom)
                    //Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Menu principal")
                            .fontWeight(.regular)
                        Text("")
                            .font(.subheadline)
                        Divider()
                        NavigationLink(destination: ChannelView()){
                            Text("Ajouter une chaîne").foregroundColor(Color("main yellow"))
                        }
                        Button(action: {
                            self.showingSecondVC.toggle()
                        }){
                            Text("À Propos de Tenla").foregroundColor(Color("main yellow"))
                        }
                        .sheet(isPresented: $showingSecondVC){
                            SecondView()
                        }
                    }
                    .frame(height: 300)
                    
                    //Spacer()
                }.padding()
                    // Color("main yellow")
                    .edgesIgnoringSafeArea(.bottom)
                
                
            }.navigationBarTitle("Tenla")
            //.background(Color("main yellow"))
        }
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
