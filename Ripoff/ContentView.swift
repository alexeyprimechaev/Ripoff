//
//  ContentView.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/3/21.
//

import SwiftUI
import WebKit



struct ContentView: View {
    
    @StateObject var omniboxState = OmmniboxState()
    @StateObject var model = WebViewModel()
    
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
        ZStack {
            WebView(webView: model.webView)
                .animation(.interactiveSpring())
                .onAppear {
                    model.loadUrl()
                }
                .edgesIgnoringSafeArea(.bottom)
            VStack {
                Spacer()
                Omnibox().environmentObject(omniboxState)
                    .offset(x: dragAmount.width, y: dragAmount.height)
                    
                    .scaleEffect(1+(dragAmount.height/1688))
                
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                
                                let velocity = CGSize(
                                    width:  value.predictedEndLocation.x - value.location.x,
                                    height: value.predictedEndLocation.y - value.location.y
                                )
                                print(velocity.height)
                                
                                withAnimation(.interactiveSpring()) {
                                dragAmount.height = value.translation.height
                                }
                            }
                            .onEnded { value in
                                
                                let velocity = CGSize(
                                    width:  value.predictedEndLocation.x - value.location.x,
                                    height: value.predictedEndLocation.y - value.location.y
                                )
                                

                                // Example

                                if velocity.height > 500.0 {
                                    // Moving down fast
                                }
                                withAnimation(.interactiveSpring(response: 0, dampingFraction: 0.2, blendDuration: 0.2)) {

                                    dragAmount = .zero
                                }
                            }
                    )
            }
        }
    }
}

