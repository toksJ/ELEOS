//
//  ToDoList.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import SwiftUI

struct ToDoList: View {
      
                    @StateObject var todoManager = TodoManager()

                    var body: some View {
                        TabView{
                            MainTodoListView(todoManager: todoManager)
                                .tabItem{
                                    Label("Todos", systemImage: "checkmark.circle.fill")
                                }
                            HowManyMoreView(todoManager: todoManager)
                                .tabItem{
                                    Label("Number of todos", systemImage: "number.circle.fill")
                                }
                        }
                    }
                }


struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
