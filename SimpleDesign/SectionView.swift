//
//  SectionView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/28/24.
//

import SwiftUI

struct SectionView: View {
    let section: Section
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundStyle(.white)
                Spacer()
                Image(section.logo)
            }

            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color(#colorLiteral(red: 0.8606670499, green: 0.876768887, blue: 0, alpha: 1)))
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding([.horizontal, .top], 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct Section: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let logo: String
    let image: Image
    let color: Color
}
    

#Preview {
    SectionView(section: Section(
        title: "Design in SwiftUI",
        text: "50 lessons",
        logo: "Logo SwiftUI",
        image: Image("1"),
        color: Color(#colorLiteral(red: 0.3347967267, green: 0.09710863978, blue: 0.8539870381, alpha: 1))
    ))
}
