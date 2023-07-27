//
//  Multiplatform_macOSApp.swift
//  Multiplatform_macOS
//
//  Created by klifton Cheng stu on 24/7/22.
//

import SwiftUI

@main
struct Multiplatform_macOSApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            ContentView_mac()
            #elseif os(iOS)
            ContentView_iOS()
            #endif
        }
    }
}
