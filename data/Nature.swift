//
//  File.swift
//  
//
//  Created by Voogie on 04/08/2023.
//

import Foundation

struct Nature: Identifiable {
    let name: String
    let imageName: String
    let desc: String
    let id = UUID()
    
    static func examples() -> [Nature] {
        [
            Nature(name: "Lake Yoyoko", imageName: "lake", desc: "Image of a beautiful lake in one of the most beutiful corners of Japan, region of fallen samurai, Yoyoko."),
            Nature(name: "Trees of Ashdoot", imageName: "trees", desc: "Ashdoot the place where trees are growing for thousands of years. This image represents calmness, love and tranquility."),
            Nature(name: "Dunes of Zakarat", imageName: "sand", desc: "Untamed sands of Zakarat have been inspiring millions of people to visit the place. To conquer the mighty desert."),
            Nature(name: "Valley of Ådøyjir", imageName: "valley", desc: "Legend has it, that the soul of the last dragon Ådøyjir is still hovering over the vally. If you're lucky enough the visit this majestic place, you might finally find your restless soul."),
        ]
    }
    
    static func exampleLake() -> Nature {
        examples()[0]
    }
    
    static func exampleTrees() -> Nature {
        examples()[1]
    }
    
    static func exampleDunes() -> Nature {
        examples()[2]
    }
    
    static func exampleValley() -> Nature {
        examples()[3]
    }
}
