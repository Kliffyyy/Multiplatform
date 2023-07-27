//
//  ContentView.swift
//  Multiplatform_iOS
//
//  Created by klifton Cheng stu on 22/7/22.
//

import SwiftUI

struct ContentView_iOS: View {
    var body: some View {
        NavigationView {
            TutorListView(tutors: Tutor.all())
                .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_iOS_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_iOS()
    }
}
