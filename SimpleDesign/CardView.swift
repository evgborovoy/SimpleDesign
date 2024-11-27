//
//  CardView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct CardView: View {
    @Binding var BottomCard: Bool
    @Binding var viewState: CGSize
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Design in SwiftUI")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Text("Certificate")
                        .foregroundStyle(.main)
                }
                
                Spacer()
                
                Image("Logo SwiftUI")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
            }
            .padding(
                EdgeInsets(
                    top: 20,
                    leading: 20,
                    bottom: 0,
                    trailing: 20
                )
            )
            Image("2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: BottomCard ? 370 : 340, height: 220)
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(radius: 20)
        .offset(x: viewState.width, y: viewState.height)
        .offset(y: BottomCard ? -100 : 0)
        .blendMode(.hardLight)
        .onTapGesture {
            withAnimation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8)) {
                BottomCard.toggle()
            }
        }
    }

}

#Preview {
    CardView(BottomCard: .constant(false), viewState: .constant(.zero))
}
