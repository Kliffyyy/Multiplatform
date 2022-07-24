//
//  RatingView.swift
//  Multiplatform
//
//  Created by klifton Cheng stu on 24/7/22.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating:Int?
    
    private func starType(index: Int) ->  String {
    
        // icons
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.orange)
                    .onTapGesture { self.rating = index }
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
