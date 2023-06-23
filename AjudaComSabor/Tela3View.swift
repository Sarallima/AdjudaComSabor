//
//  ContentView.swift
//  tela_3
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct Tela3View: View {
    @State var login: String = "Login"
    @State var email: String = ""
    @State var senha: String = ""
    @State var comprovante: String = ""
    var body: some View {
        VStack {
            HStack {
                Text(login)
                    .bold()
                    .font(.system(size: 34.9))
                    .padding()
                Spacer()
            }
            HStack{
                Color("Color")
                    .frame(width:68,height: 4)
                    .cornerRadius(2)
                Spacer()
                
            }
            .padding(.leading, 2)
            .padding(.top, -40)
            .padding()
            
            VStack(alignment: .center){
                
                VStack(alignment: .leading) {
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
                .padding(.leading, -50)
                
                
                HStack{
                    Text("Pix para doação:")
                        .foregroundColor(Color("Color"))
                        .bold()
                        .padding(.horizontal,-25)
                    Text("00000000")
                        .padding(.horizontal,19)
                }.padding(.leading, -80)
                
                VStack{
                    Text("Não tem uma conta?")
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    NavigationLink {
                        Tela4view()
                    } label: {
                    NavigationLink {
                            Tela4view()
        
                        } label: {
                            Text("Cadastre-se")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Color"))
                                .bold()
                                .padding(.top,-7)
                            
                            
                        }
                    }
                    
                }.padding(.top,10)
                    .padding()
                
                Spacer()
                VStack{
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
                            .padding(.top,10)
                    }
                }
                
            }
            
        }
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Tela3View()
        }
    }
}

