//
//  Data.swift
//  Multiplatform
//
//  Created by klifton Cheng stu on 24/7/22.
//

import Foundation
import SwiftUI

enum Experience: String {
    case student = "Student"
    case basic = "basic"
    case coder = "Coder"
    case teacher = "Teacher"
}

extension Experience {
    
    var title: String {
        switch self {
            case .student:
                return "Student"
            case .basic:
                return "Basic"
            case .coder:
                return "Coder"
            case .teacher:
                return "Teacher"
        }
    }
    
}


// can be used for tutor profile page
struct Tutor: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let rating: Int?
    let laguage: [String?]
}

extension Tutor {
    
    static func all() -> [Tutor] {
        return [Tutor(name: "Roger Yeo", image: "image_1", description: "A proud member of GeeksHacking", rating: 3, laguage: ["Javascript", "Swift"] ),
                Tutor(name: "Julian Teh", image: "image_2", description: "A proud member of GeeksHacking", rating: 3, laguage: ["Swift"] ),
                Tutor(name: "Luke Yeo", image: "image_3", description: "SSTinc Student Teacher", rating: 3, laguage: ["Swift Storyboards"] ), 
                ]
    }
}
