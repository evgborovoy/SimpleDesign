//
//  MenuRowView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct MenuRowView: View {
    
    let title: String
    let image: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: image)
                .font(.system(size: 20, weight: .light, design: .default))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundStyle(.blue)
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, alignment: .leading)
        }
    }
}

#Preview {
    MenuRowView(title: "Title", image: "gear")
}
