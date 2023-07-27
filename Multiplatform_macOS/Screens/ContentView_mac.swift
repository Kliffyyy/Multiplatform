//
//  ContentView.swift
//  Multiplatform_macOS
//
//  Created by klifton Cheng stu on 24/7/22.
//

import SwiftUI

struct ContentView_mac: View {
    var body: some View {
        NavigationView {
            TutorListView(tutors: Tutor.all())
                .frame(minWidth: 200)
                .background(.clear)
        }.toolbar {
            ToolbarItem(placement: .principal) {
                Button(action: toggleSidebar, label: { // 1
                    Image(systemName: "sidebar.leading")
                })
            }
        }
    }
    
    private func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}


struct ContentView_mac_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_mac()
    }
}
