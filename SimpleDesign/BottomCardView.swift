//
//  BottomCardView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct BottomCardView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 50, height: 5)
                .opacity(0.2)
            Text("Studying the features of developing adaptive design on SwiftUI")
                .multilineTextAlignment(.center)
                .font(.title3)
                .bold()
                .lineSpacing(5)
            
            HStack(spacing: 20) {
                RingView(color1: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), frameWidth: 80, frameHeight: 80, text: 65, show: $show)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Design in SwiftUI")
                        .bold()
                    Text("39 of 50 lessons completed")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding(20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
            }
            
            Spacer()
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color("Background 3"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 20)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    BottomCardView(show: .constant(true))
}
