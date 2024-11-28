//
//  RingView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/28/24.
//

import SwiftUI

struct RingView: View {
    var color1 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    var color2 = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    var frameWidth: CGFloat = 100
    var frameHeight: CGFloat = 100
    var text: CGFloat = 78
    @Binding var show: Bool
    
    
    
    var body: some View {
        let multiplier = frameWidth / 44
        let progress = 1 - text / 100
        ZStack {
            Circle()
                .stroke(.black.opacity(0.2), style: StrokeStyle(lineWidth: 5 * multiplier))
                .frame(width: frameWidth, height: frameHeight)
            Circle()
                .trim(from: show ? progress : 1, to: 1)
                .stroke(LinearGradient(colors: [Color(color1), Color(color2)], startPoint: .topTrailing, endPoint: .bottomLeading), style: StrokeStyle(lineWidth: 5 * multiplier))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .frame(width: frameWidth, height: frameHeight)
                .shadow(color: Color(color1).opacity(0.2), radius: 3 * multiplier, x: 0, y: 3 * multiplier)
            Text("\(Int(text))%")
                .font(.system(size: 14 * multiplier, weight: .bold))
                .frame(width: frameWidth, height: frameHeight)
            
        } 
    }
}

#Preview {
    RingView(show: .constant(true))
}
