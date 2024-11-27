//
//  MenuView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Progress - 23%")
            Color.white
                .frame(width: 38, height: 6)
                .clipShape(RoundedRectangle(cornerRadius: 2))
                .frame(width: 130, height: 6, alignment: .leading)
                .background(Color.black.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 2))
                .padding()
                .frame(width: 150, height: 24)
                .background(.black.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            MenuRowView(title: "Settings", image: "gear")
            MenuRowView(title: "Account", image: "creditcard")
            MenuRowView(title: "Log out", image: "person.crop.circle")
        }
        .frame(maxWidth: .infinity, alignment: .bottom)
        .frame(height: 300)
        .background(LinearGradient(colors: [Color(#colorLiteral(red: 0.8541994691, green: 0.8541994691, blue: 0.8541994691, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        .padding(.horizontal, 20)
        .overlay {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .clipShape(Circle())
                .offset(y: -150)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .padding(.bottom, 20)
        
        
    }
    
}

#Preview {
    MenuView()
}
