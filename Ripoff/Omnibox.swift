//
//  Omnibox.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/5/21.
//

import SwiftUI


class OmmniboxState: ObservableObject {
    
    @Published var link = "apple.com"
    @Published var navigationState: NavigationState = .no
    @Published var editingLink = false
    
}

struct AddressBar: View {
    
    @EnvironmentObject var omniboxState: OmmniboxState
    
    
    @FocusState private var isFocused: Bool
        
    var body: some View {
        ZStack(alignment: .leading) {
                TextField("", text: $omniboxState.link) {
                    omniboxState.editingLink = false
                    isFocused = false
                }
                .focused($isFocused)
                .onTapGesture {
                    omniboxState.editingLink = true
                    isFocused = true
                }
                .opacity(omniboxState.editingLink ? 1 : 0)
                HStack(spacing: 4) {

                    Text(omniboxState.link).lineLimit(1)
                    Image(systemName: "lock.fill").imageScale(.small).foregroundColor(.secondary).animation(.default, value: omniboxState.editingLink)
                }
                .onTapGesture {
                    omniboxState.editingLink = true
                    isFocused = true
                }
                .opacity(omniboxState.editingLink ? 0 : 1)
                .animation(.default, value: omniboxState.editingLink)
            }.padding(.horizontal, 8)
            
    }
}

struct Omnibox: View {
    
    
    @EnvironmentObject var omniboxState: OmmniboxState
        
    var body: some View {
        HStack(spacing: 0) {
            NavigationButtons()
            AddressBar()
            
            Spacer()
            
            ToolbarButtons()
            
        }
        .padding(.horizontal, 8)
        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).foregroundStyle(.bar))
        .shadow(radius: 23)
        .padding(.vertical, 22)
        .padding(.horizontal, 20.5)
            
        
        
        
            
            
    }
}
