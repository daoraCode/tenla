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
        NavigationView {
            ZStack {
                
                //cette zstack détermine la couleur rouge de tout l'écran, elle englobe tous les éléments de la vue principale
                
                Color("main red")
                    
                    .edgesIgnoringSafeArea(.vertical)
                
                VStack {
                    //                  Spacer()
                    VStack(alignment: .center) {
                        Image("objective")
                            .resizable()
                            .frame(width: 260, height: 260)
                            .clipShape(Circle())
                    }
                    .padding()
//                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Menu principal")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                        
                        Divider()
                        // .padding()
                        NavigationLink(destination: CameraView()){
                            Text("Appareil Photo").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }
                        
                        Button(action: {
                            self.showingSecondView.toggle()
                        }){
                            Text("À Propos").fontWeight(.semibold).foregroundColor(Color("jupiter yellow"))
                        }.padding(.top, 2)
                        .sheet(isPresented: $showingSecondView){
                            SecondView(dismissSheetAbout: $showingSecondView)
                        }
                        
                    }.navigationBarTitle("Tenla")
                    .padding(.horizontal, 15)
                    Spacer()
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
