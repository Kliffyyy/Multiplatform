//
//  TutorListView.swift
//  Multiplatform
//
//  Created by klifton Cheng stu on 24/7/22.
//

import SwiftUI

enum FilterExperience: String, CaseIterable, Identifiable {
    case all = "all"
    case basic = "basic"
    case coder = "Coder"
    case teacher = "Teacher"
    
    var id: FilterExperience { self }
}

struct TutorListView: View {
    
    let tutors: [Tutor]
    @State private var filter =  FilterExperience.all
    
    var filterTutors: [Tutor] {
        tutors.filter { tutor in
            (filter == .all) || (tutor.exp.rawValue == filter.rawValue)
        }
    }
    
    var body: some View {
        List(filterTutors) {  i  in
            NavigationLink (destination: TutorDetailView(tutors: i),
                            label: {
                HStack {
                    Image(i.image)
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .clipShape(Circle())
                    Text(i.name)
                        .font(.headline)
                        .padding(.bottom, 5)
            }})
        }.toolbar {
            ToolbarItem(placement: .navigation) {
                Menu {
                    Picker("Experience", selection: $filter) {
                        ForEach(FilterExperience.allCases) {
                            Text($0.rawValue)
                                .tag($0)
                        }
                    }
                } label: {
                    Label("Filter", systemImage: "slider.horizontal.3")
                }
            }
        }
        
        
        .navigationTitle("Tutors")
    }
}

struct TutorListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TutorListView(tutors: Tutor.all())
        }
    }
}
