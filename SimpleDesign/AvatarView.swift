//
//  AvatarView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct AvatarView: View {
    @Binding var showProfile: Bool

    var body: some View {
        Button {
            self.showProfile.toggle()
        } label: {
            Image("avatar")
                .renderingMode(.original)
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        }
    }
}

#Preview {
    AvatarView(showProfile: .constant(true))
}
