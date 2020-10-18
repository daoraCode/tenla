//
//  ContentView.swift
//  Tenla
//
//  Created by Daora Rouge on 26/02/2020.
//  Copyright © 2020 Daora Rouge. All rights reserved.
//

import SwiftUI

struct ContentView: View {                                          
    
    @State private var showingSecondView: Bool = false
    @State private var showingCameraView: Bool = false
    
    var body : some View {
        
        NavigationView { //cette zstack détermine la couleur rouge de tout l'écran, elle englobe tous les éléments de la vue principale
            ZStack {
                Color("main red")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    VStack(alignment: .center) {
                        Image("objective")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .clipShape(Circle())
                            .padding(.bottom, 45.5)
                    }
                    .padding()
                    VStack {
                        Text("Menu principal")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                        Divider()
                            
                            .padding()
                        NavigationLink(destination: CameraView()){
                            Text("Appareil Photo").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        
                        Button(action: {
                            self.showingSecondView.toggle()
                        }){
                            Text("À Propos").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        .sheet(isPresented: $showingSecondView){
                            SecondView()
                        }.padding()
                    }.navigationBarTitle("Tenla")
                    
                }
                
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//                        Button(action: {
//                            self.showingCameraView.toggle()
//                        }){
//                            Text("Appareil Photo").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
//                        }
//                        .sheet(isPresented: $showingCameraView){
//                                CameraView()
//                        }

//                            .frame(height: 290)//
// .frame(minWidth: 200, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity, alignment: Alignment.topLeading)
