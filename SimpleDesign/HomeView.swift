//
//  HomeView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    var body: some View {
        VStack {

            HStack {
                AvatarView(showProfile: $showProfile)
                Spacer()
            }
            .padding([.horizontal, .top], 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(sectionData) { item in
                        GeometryReader { geometry in
                            SectionView(section: item)
                                .rotation3DEffect(Angle(degrees: geometry.frame(in: .global).minX - 30) / -20, axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width: 275, height: 275)
                    }
                }
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 60, trailing: 30))
            }
            
            Spacer()
        }
    }
}

let sectionData = [
        Section(
            title: "Design in SwiftUI",
            text: "50 lessons",
            logo: "Logo SwiftUI",
            image: Image("1"),
            color: Color(#colorLiteral(red: 0.3347967267, green: 0.09710863978, blue: 0.8539870381, alpha: 1))
        ),
        Section(
            title: "Swift foundations",
            text: "30 lessons",
            logo: "Logo SwiftUI",
            image: Image("2"),
            color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        ),
        Section(
            title: "Create App",
            text: "34 lessons",
            logo: "Logo SwiftUI",
            image: Image("3"),
            color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        ),
    ]

#Preview {
    HomeView(showProfile: .constant(true))
}
