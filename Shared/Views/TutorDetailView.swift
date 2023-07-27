//
//  TutorDetailView.swift
//  Multiplatform
//
//  Created by klifton Cheng stu on 31/7/22.
//

import SwiftUI

struct TutorDetailView: View {
    
    let tutors: Tutor
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image(tutors.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .aspectRatio(1.0, contentMode: .fit)
                Spacer()
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text(tutors.exp.title)
                        .font(.caption)
                        .padding(8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                Text(tutors.description)
                HStack {
                    Text("Rating")
                        .font(.headline)
                    RatingView(rating: .constant(tutors.rating))
                }.padding(.top, 10)
                .navigationTitle(tutors.name)
            }.padding()
            Spacer()
        }
    }
}

struct TutorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetailView(tutors: Tutor.all()[0])
    }
}
