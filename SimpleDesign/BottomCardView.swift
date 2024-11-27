//
//  BottomCardView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct BottomCardView: View {
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
            Spacer()
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color("Background 3"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 20)
    }
}

#Preview {
    BottomCardView()
}
