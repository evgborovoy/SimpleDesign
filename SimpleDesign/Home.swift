//
//  HomeView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/27/24.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    @State var viewState = CGSize.zero
    @State var showContent = false
    
    let animation = Animation.spring(response: 0.5, dampingFraction: 0.6)
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            HomeView(showProfile: $showProfile, showContent: $showContent)
                .padding(.top, 30)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .scaleEffect(showProfile ? 0.9 : 1)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                .offset(y: showProfile ? -450 : 0)
                .rotation3DEffect(.degrees(showProfile ? -10 : 0), axis: (x: 10, y: 0, z: 0))
                .animation(animation, value: showProfile)
                .ignoresSafeArea()
            
            if showProfile {
                Color.black.opacity(0.01) // Invisible but tappable
                    .ignoresSafeArea()
                    .onTapGesture {
                        self.showProfile.toggle()
                    }
            }
            
            MenuView()
                .offset(y: showProfile ? 0 : UIScreen.main.bounds.height)
                .offset(y: viewState.height)
                .animation(animation, value: showProfile)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.viewState = value.translation
                            if self.viewState.height > 150 {
                                self.showProfile = false
                            }
                        }
                        .onEnded{ value in
                            withAnimation {
                                self.viewState = .zero
                            }
                        }
                )
            
            if showContent {
                Color.white.ignoresSafeArea(edges: .all)
                
                ContentView()
                Spacer()
                
                Image(systemName: "xmark")
                    .frame(width: 36, height: 36)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(Circle())
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding()
                    .transition(.move(edge: .top))
                    .onTapGesture {
                        showContent = false
                    }
            }
        }
    }
}

#Preview {
    Home()
}
