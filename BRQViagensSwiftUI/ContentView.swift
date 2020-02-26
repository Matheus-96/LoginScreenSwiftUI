//
//  ContentView.swift
//  BRQViagensSwiftUI
//
//  Created by Matheus Rodrigues Araujo on 13/02/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password : String = ""
    
    @ObservedObject var keyboard = KeyboardResponder()
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 50){
                
                HStack{
                    Spacer().frame(width: 10, height: 0, alignment: .leading )
                    Image("R")
                        .resizable()
                        .frame(width: 60, height: 70, alignment: .center )
                        .offset(CGSize(width: 10, height: 120) )
                        .aspectRatio(contentMode: .fill)
                    Image("Top Photo")
                        
                        .resizable()
                        .offset(.init(width:20, height: 0))
                        .aspectRatio(contentMode: .fit)
                    
                }.padding(.bottom)
                    .padding(.top, -1)
                
                VStack {
                    HStack{
                        
                        VStack (alignment: .leading, spacing: 0) {
                            Text("BRQ")
                                .font(.system(size: 27))
                                .foregroundColor(.black)
                            Text("Seu app de Viagens")
                                .font(.system(size: 27))
                                .foregroundColor(.gray)
                        }
                        Spacer().frame(width: 80, height: 0, alignment: .leading)
                        
                    }
                }
                VStack (spacing: 16){
                    TextField("E-mail", text: $email)
                        .frame(width: 300, height: 50, alignment: .center)
                        .padding(.leading, 10)
                        .padding(.trailing, -10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                    )
                    TextField("Senha", text: $password )
                        .frame(width: 300, height: 50, alignment: .center)
                        .padding(.leading, 10)
                        .padding(.trailing, -10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                    )
                }
                VStack(spacing: 30){
                    Button(action: {
                        print("Botão Pressionado")
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                            .frame(width: 300, height: 60, alignment: .center)
                            .background(LinearGradient(gradient: Gradient(colors: [.blue, .init(red: 2/255, green: 80/255, blue: 200/255)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)
                            .overlay(
                                Text("LOGIN")
                                    .foregroundColor(.white)
                        )
                    }
                    Text("Não tem conta? Se Cadastre")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    Spacer().frame(width: 0, height: 80, alignment: .bottom)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.padding(.bottom, self.keyboard.currentHeight).animation(.easeIn(duration: self.keyboard.keyboardDuration))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
