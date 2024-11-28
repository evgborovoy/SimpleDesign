//
//  ContentView.swift
//  SimpleDesign
//
//  Created by Evgeniy Borovoy on 11/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var showBackCard: Bool = false
    @State var viewState = CGSize.zero
    @State var showBottomCard: Bool = false
    @State var showFull: Bool = false
    @State var bottomState = CGSize.zero
    
    var body: some View {
        
        ZStack {
            TitleView() //  Think about navigationStack and navTitle
                .blur(radius:showBackCard ? 20 : 0)
                .blur(radius:showBottomCard ? 2 : 0)
                .opacity(showBottomCard ? 0.2 : 1)
                .offset(y: showBottomCard ? -10 : 0)

            
            BackCardView(showBackCard: $showBackCard, viewState: $viewState)
            
            // TODO: Maybe change animation
            CardView(BottomCard: $showBottomCard, viewState: $viewState)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.linear){
                                self.viewState = value.translation
                                self.showBackCard = true
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.bouncy) {
                                self.viewState = .zero
                                self.showBackCard = false
                            }
                        }
                )
//            Text("\(bottomState.height)").offset(y: -300)

            BottomCardView(show: $showBottomCard)
                .offset(y: showBottomCard ? 360 : 1000)
                .offset(y: bottomState.height)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.bottomState = value.translation
                            if self.showFull {
                                self.bottomState.height += -300
                            }
                            if self.bottomState.height < -300 {
                                self.bottomState.height = -300
                            }
                        }
                        .onEnded { _ in
                            withAnimation {
                                if self.bottomState.height > 50 {
                                    self.showBottomCard = false
                                }
                                if self.bottomState.height < -100 {
                                    self.bottomState.height = -300
                                    self.showFull = true
                                } else {
                                    self.bottomState = .zero
                                    self.showFull = false
                                }
                                
                            }
                        }
                )
        }
    }
}



#Preview {
    ContentView()
}

struct TitleView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding()
            Spacer()
        }
    }
}
