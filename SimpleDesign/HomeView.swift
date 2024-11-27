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
            Spacer()
        }
    }
}

#Preview {
    HomeView(showProfile: .constant(true))
}
