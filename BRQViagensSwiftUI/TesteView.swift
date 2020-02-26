//
//  TesteView.swift
//  BRQViagensSwiftUI
//
//  Created by Matheus Rodrigues Araujo on 13/02/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .init(red: 20/255, green: 0, blue: 1)]), startPoint: .leading, endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack (spacing: 350){
                    Spacer().frame(width: -300, height: 0, alignment: .center)
                    Image("Page1")
                        .resizable()
                        .frame(width: 300, height: 600, alignment: .center)
                        .aspectRatio(contentMode: .fill)
//                    Divider()
                    Image("Page1")
                        .resizable()
                        .frame(width: 300, height: 600, alignment: .center)
                        .aspectRatio(contentMode: .fill)
//                    Divider()
                    Image("Page1")
                        .resizable()
                        .frame(width: 300, height: 600, alignment: .center)
                        .aspectRatio(contentMode: .fill)
//                    Divider()
                    Image("Page1")
                        .resizable()
                        .frame(width: 300, height: 600, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                    Spacer().frame(width: -300, height: 0, alignment: .center)
                    
                }
            }
        }
        
        
        
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
