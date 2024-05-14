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
    
    static func loadToDos() -> [ToDo]?  {
        return nil
    }
    
}
