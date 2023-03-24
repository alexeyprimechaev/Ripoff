//
//  EllipsisButton.swift
//  Ripoff
//
//  Created by Alexey Primechaev on 10/5/21.
//

import SwiftUI

struct EllipsisButton: View {
    var body: some View {
        Menu {
            Button {
                
            } label: {
                Label("Reload", systemImage: "arrow.clockwise")
            }
            
            Button {
                
            } label: {
                Label("Show Reader", systemImage: "doc.plaintext")
            }
            
            Button {
                
            } label: {
                Label("Hide Toolbar", systemImage: "eye.slash")
            }
            Divider()
            
            Button {
                
            } label: {
                Label("Bookmarks", systemImage: "book")
            }
            
            Button {

            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            
            Divider()
            
            Menu {
                Text("haha")
            } label: {
                Label("Extensions", systemImage: "puzzlepiece.extension")
            }
            
            Button {
                
            } label: {
                Label("Page Size • 100%", systemImage: "textformat")
            }
            
            Button {
                
            } label: {
                Label("Website Settings", systemImage: "gear")
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
        } label: {
            Image(systemName: "ellipsis.circle").imageScale(.large).padding(.vertical, 15).padding(.horizontal, 7.5)
        }
    }
}
