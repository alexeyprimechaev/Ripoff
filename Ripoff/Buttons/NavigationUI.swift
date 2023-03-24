//
//  NavigationUI.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/5/21.
//

import SwiftUI

enum NavigationState {
    case no, onlyBack, both
}






struct BackButton: View {
    var body: some View {
        Menu {
            Text("Huh")
            Text("Huh")
            Text("Huh")
            Text("Huh")
        } label: {
            Image(systemName: "chevron.left")
                .imageScale(.large)
                .padding(.vertical, 15)
                .padding(.horizontal, 8)
        } primaryAction: {
            
        }
    }
}

struct ForwardButton: View {
    var body: some View {
        Menu {
            Text("Huh")
            Text("Huh")
            Text("Huh")
            Text("Huh")
        } label: {
            Image(systemName: "chevron.right")
                .imageScale(.large)
                .padding(.vertical, 15)
                .padding(.horizontal, 8)
        } primaryAction: {
            
        }
    }
}

struct NavigationButtons: View {
    
    @EnvironmentObject var omniboxState: OmmniboxState
    
    var body: some View {
        HStack {
            switch omniboxState.navigationState {
            case .no:
                EmptyView()
                
            case .onlyBack:
                BackButton()
            case .both:
                BackButton()
                ForwardButton()
                
            }

        }
        
    }
}
