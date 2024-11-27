//
//  BackCardView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct BackCardView: View {
    @Binding var showBackCard: Bool
    @Binding var viewState: CGSize
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
            }
            .frame(width: 340, height: 220)
            .background(showBackCard ? .additional : .backCard1)
            .clipShape(RoundedRectangle(cornerRadius: 20 ))
            .shadow(radius: 10)
            .offset(y: showBackCard ? -400 : -40)
            .offset(x: viewState.width, y:viewState.height)
            .scaleEffect(0.9)
            .rotationEffect(.degrees(showBackCard ? 0 : 10))
            .rotation3DEffect( .degrees(10), axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.5), value: showBackCard)
            
            VStack{
                Spacer()
            }
            .frame(width: 340, height: 220)
            .background(showBackCard ? .backCard1 : .additional)
                .clipShape(RoundedRectangle(cornerRadius: 20 ))
                .shadow(radius: 10)
                .offset(y: showBackCard ? -200 : -20)
                .offset(x: viewState.width, y:viewState.height)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(showBackCard ? 0 : 5))
                .rotation3DEffect( .degrees(10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: showBackCard)
        }
    }
    
}

#Preview {
    BackCardView(showBackCard: .constant(true), viewState: .constant(.zero))
}
