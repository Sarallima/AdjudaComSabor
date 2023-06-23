//
//  ContentView.swift
//  tela_1
//
//  Created by user on 30/05/23.
//

import SwiftUI

struct Tela1View: View {
    @State var pesquisa: String = ""
    var body: some View {
        ScrollView(.vertical){
            VStack {
                HStack{
                    
                    ZStack(alignment: .trailing) {
                        TextField("Digite algo...",text: $pesquisa)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .shadow(radius: 3)
                           
                        Button {
                            // acao do botao
                            
                        } label: {
                            Text("Pesquisar")
                                .padding(.vertical, 4)
                                .padding(.horizontal, 16)
                                .background(Color("cor1"))
                                .cornerRadius(7.0)
                                .foregroundColor(Color.black)
                                .bold()
                        }
                        .padding(.trailing, 5)
                    }
                    Image("projeto")
                        .resizable()
                        .frame(width: 35, height: 35 )
                        .clipShape(Circle())
                    //Color.red
                        //.frame(width: 50)
                    
                }
                .padding()
                
                Card(imagem: "acaoDaCidadania", evento: "Evento beneficente - Fortaleza, CE", logo: "icon", instituicao: "Ação da cidadania")
                
                
                Divider()
                
                Card(imagem: "amigosDoBem 1", evento: "Evento beneficente - São Paulo, SP",logo:"amigosDoBem", instituicao: "Amigos do Bem")
                
                Divider()
                
                Card(imagem: "hamburgadaDoBem 1", evento: "Evento beneficente - Rio de Janeiro, RJ",logo:"hamburgadaDoBem", instituicao:"Hamburgada do Bem")
                
            }
            .padding()
        }
    }
    
    struct Card: View {
        
        let imagem: String
        let evento: String
        let logo: String
        let instituicao: String
        var body: some View {
            VStack {
                Image(imagem)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 187)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                VStack {
                    Text(evento)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.top,-10)
                        .padding(.horizontal,-60)
                        
                    HStack{
                        Image(logo)
                            .resizable()
                            .frame(width: 35, height: 35 )
                            .clipShape(Circle())
                            .padding(.top,0)
                        
                        Text(instituicao)
                            .fontWeight(.regular)
                        Spacer()
                        
                        NavigationLink {
                            Tela2view()
                        } label: {
                            Text("Ajude")
                                .padding(.vertical, 4)
                                .padding(.horizontal, 16)
                                .background(Color("cor1"))
                                .cornerRadius(7.0)
                                .foregroundColor(Color.black)
                                .bold()
                        }
                        
                    }
                }
                .padding()
            }
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(radius: 5)
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Tela1View()
        }
    }
}

