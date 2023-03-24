//
//  EllipsisButton.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/5/21.
//

import SwiftUI

struct TabsButton: View {
    
    @EnvironmentObject var omniboxState: OmmniboxState
    
    @State var isPresented = false

    
    var body: some View {
        Menu {
            Text("Huh")
            Text("Huh")
            Text("Huh")
            Text("Huh")
        } label: {
            Image(systemName: "square.on.square")
                .imageScale(.large)
                .padding(.vertical, 15)
                .padding(.horizontal, 8)
        } primaryAction: {
            
            
            isPresented = true

            if omniboxState.navigationState == .no {
                omniboxState.navigationState = .onlyBack
            } else if omniboxState.navigationState == .onlyBack {
                omniboxState.navigationState = .both
            } else  {
                omniboxState.navigationState = .no
            }
            
            
            
            
            
        }
        

    }
}
