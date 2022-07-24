//
//  TutorListView.swift
//  Multiplatform
//
//  Created by klifton Cheng stu on 24/7/22.
//

import SwiftUI

struct TutorListView: View {
    var body: some View {
        List(Tutor.all()) {  i  in
            Text(i.name)
        }
    }
}

struct TutorListView_Previews: PreviewProvider {
    static var previews: some View {
        TutorListView()
    }
}
