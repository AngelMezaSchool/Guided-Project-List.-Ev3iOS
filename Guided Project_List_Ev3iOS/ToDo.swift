//
//  ToDo.swift
//  Guided Project_List_Ev3iOS
//
//  Created by Angel Meza on 14/05/24.
//

import Foundation

struct ToDo: Equatable, Codable {
    var id = UUID()
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadSampleToDo() -> [ToDo] {
        let toDo1 = ToDo(id: UUID(), title: "To-Do One", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let toDo2 = ToDo(id: UUID(), title: "2", isComplete: false, dueDate: Date(), notes: "something 2")
        let toDo3 = ToDo(id: UUID(), title: "todo 3", isComplete: false, dueDate: Date(), notes: ":D")
        return [toDo1, toDo2, toDo3]
    }
 

    
}
