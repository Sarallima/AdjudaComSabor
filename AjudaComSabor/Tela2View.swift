//
//  ContentView.swift
//  tela_2
//
//  Created by user on 06/06/23.
//

import SwiftUI

struct Tela2view: View {
    var body: some View {
        VStack {
            TabView {
                Image("acaoDaCidadania")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 380)
                    .cornerRadius(12)
                Image("leo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 380)
                    .cornerRadius(12)
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            
            VStack(alignment: .leading) {
                Text("Evento beneficente - Fortaleza, CE")
                    .font(.title3)
                    .bold()
                    .padding(.horizontal,10)
                
                HStack{
                    Image("icon")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                    Text("Ação Cidadania")
                        .padding(.vertical, 4)
                        .bold()
                    
                } .padding(.top,-1)
                    .padding(.bottom,10)
                
                
                Text("Um evento beneficente está sendo organizado em Fortaleza, CE, com a participação do cantor Léo Santana. O objetivo é arrecadar alimentos para doação a pessoas em situação de vulnerabilidade social na região.")
                    .lineSpacing(10)
                    .foregroundColor(Color("Color 1"))
                
                
                
                HStack{
                    Text("200+ Doações")
                    Spacer()
                    Text("Doação total ")
                }
                .foregroundColor(Color("Color 1"))
                .padding()
            }
            .padding()
            HStack{
                Color.red
                    .frame(width: 125, height: 30)
                    .padding(.horizontal,15)
                    .padding(.vertical,-55)
                Spacer()
                Text("$689.37")
                    .padding(.vertical,-50)
                    .padding(.horizontal,50)
                
            }
            .padding()
            
            NavigationLink {
                Tela3View()
            } label: {
                Text("Doar agora")
                    .padding(.vertical, 16)
                    .padding(.horizontal, 115)
                    .background(Color("cor1"))
                    .cornerRadius(20)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.top,-25)
                    .padding()
            }
            
        }
        
        //Button {
        // acao do botao
        
        //} label: {
        //Text("Doar agora")
        //.padding(.vertical, 16)
        //.padding(.horizontal, 115)
        // .background(Color("cor1"))
        //.cornerRadius(20)
        //.foregroundColor(Color.black)
        //.bold()
        // .padding(.top,-25)
        //.padding()
        // }
        
//        .ignoresSafeArea()
    }
    
    
    struct Tela2View_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack {
                Tela2view()
            }
        }
    }
    
}
