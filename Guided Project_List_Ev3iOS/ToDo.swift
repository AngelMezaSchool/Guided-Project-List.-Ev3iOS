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
    
    // Equatable conformance to compare ToDos
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Loading sample ToDos
    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "To-Do One", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let toDo2 = ToDo(title: "To-Do Two", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let toDo3 = ToDo(title: "To-Do Three", isComplete: false, dueDate: Date(), notes: "Notes 3")
        return [toDo1, toDo2, toDo3]
    }
    
    // Load ToDos from UserDefaults
    static func loadToDos() -> [ToDo]? {
        guard let savedToDosData = UserDefaults.standard.data(forKey: "toDos") else { return nil }
        let decoder = JSONDecoder()
        if let loadedToDos = try? decoder.decode([ToDo].self, from: savedToDosData) {
            return loadedToDos
        }
        return nil
    }

    // Save ToDos to UserDefaults
    static func saveToDos(_ toDos: [ToDo]) {
        let encoder = JSONEncoder()
        if let encodedToDos = try? encoder.encode(toDos) {
            UserDefaults.standard.set(encodedToDos, forKey: "toDos")
        }
    }
}

