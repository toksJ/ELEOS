//
//  Todo Manager.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import Foundation

import SwiftUI

class TodoManager: ObservableObject {
    @Published var todos: [Todo] = [] {
        didSet {
            save()
        }
    }
    @Published var searchTerm = ""
    
    var todosFiltered: Binding<[Todo]> {
        Binding (get: {
            if self.searchTerm == "" { return self.todos}
            return self.todos.filter {
                $0.title.lowercased().contains(self.searchTerm.lowercased())
                
            }
        },
                 set:{
            self.todos = $0
        }
                 
                 )
                 }
                 
                 
                     var numTodosDone: Int {
                         todos.filter{ $0.isCompleted}.count
                     }
                     var numTodosNotDone: Int {
                         todos.filter{ !$0.isCompleted}.count
                     }
                 
                 
                     init() {
                         load()
                     }
                 
                     func loadSampleData(){
                         todos = Todo.sampletodos
                     }
                 
                 
                 func getArchiveURL() -> URL {
            let plistName = "todos.plist"
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            
            return documentsDirectory.appendingPathComponent(plistName)
        }
                 
                 func save() {
            let archiveURL = getArchiveURL()
            print(archiveURL)
            let propertyListEncoder = PropertyListEncoder()
            let encodedTodos = try? propertyListEncoder.encode(todos)
            try? encodedTodos?.write(to: archiveURL, options: .noFileProtection)
        }
                 
                 func load() {
            let archiveURL = getArchiveURL()
            let propertyListDecoder = PropertyListDecoder()
            
            if let retrievedTodoData = try? Data(contentsOf: archiveURL),
               let todosDecoded = try? propertyListDecoder.decode([Todo].self, from: retrievedTodoData) {
                todos = todosDecoded
            }
        }
                 }
