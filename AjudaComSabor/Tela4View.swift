//
//  ContentView.swift
//  tela_4
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct Tela4view: View {
    @State var cadastro: String = "Cadastre-se"
    @State var nome: String = ""
    @State var email: String = ""
    @State var cpf: String = ""
    @State var senha: String = ""
    @State var comprovante: String = ""
    var body: some View {
        VStack {
            HStack {
                Text(cadastro)
                    .bold()
                    .font(.system(size: 34.9))
                    .padding()
                Spacer()
            }
            HStack{
                Color("Color")
                    .frame(width:143,height: 4)
                    .cornerRadius(2)
                Spacer()
                
            }.padding().padding(.leading, -10)
                .padding(.top, -55)
                .padding()
            
            VStack (alignment: .leading){
                Text("Nome Completo")
                    .font(.title3)
                    .fontWeight(.medium)
                
                TextField("Digite seu nome", text: $nome)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.white)
                            .shadow(radius: 5)
                    }
                
                    .frame(width: 306,height: 55)
                
                
                Text("E-mail")
                    .font(.title3)
                    .fontWeight(.medium)
                
                TextField("Digite seu e-mail", text: $email)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.white)
                            .shadow(radius: 5)
                    }
                    .frame(width: 306,height: 55)
                
                Text("CPF")
                    .font(.title3)
                    .fontWeight(.medium)
                
                TextField("Digite seu CPF", text: $cpf)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.white)
                            .shadow(radius: 5)
                    }
                    .frame(width: 306,height: 55)
                
                Text("Senha")
                    .font(.title3)
                    .fontWeight(.medium)
                
                TextField("Digite sua senha", text: $senha)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.white)
                            .shadow(radius: 5)
                    }
                    .frame(width: 306,height: 55)
                
                
                Text("Comprovante de pagamento")
                    .font(.title3)
                    .fontWeight(.medium)
                
                TextField("Anexar comprovante", text: $comprovante)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.white)
                            .shadow(radius: 5)
                    }
                    .frame(width: 306,height: 55)
                
                
            }
            
            Spacer()
            
            HStack{
                Text("Pix para doação:")
                    .foregroundColor(Color("Color"))
                    .bold()
                    
                Text("000000000")
                    
                    
            }
            .padding(.bottom, 40)
            Button {
                // acao do botao
                
            } label: {
                Text("Doar agora")
                    .padding(.vertical, 16)
                    .padding(.horizontal, 115)
                    .background(Color("cor1"))
                    .cornerRadius(20)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding()
                    .padding(.bottom,10)
                    
                        }
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Tela4view()
        }
    }
}

