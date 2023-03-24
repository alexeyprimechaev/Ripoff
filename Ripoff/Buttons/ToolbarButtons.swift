//
//  EllipsisButton.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/5/21.
//

import SwiftUI

struct ToolbarButtons: View {
    
    @EnvironmentObject var omniboxState: OmmniboxState
    
    var body: some View {
        HStack(spacing: 0) {
            EllipsisButton()
            TabsButton()
        }
    }
}
