//
//  MainTodoListView.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import SwiftUI

struct MainTodoListView: View {


            @ObservedObject var todoManager: TodoManager
            @State private var showSheet = false
            @State private var showConfirmAlert = false
            
            var body: some View {
                
                NavigationStack {
                    
                    List(todoManager.todosFiltered
                    , editActions: [.all]) { $todo in
                    TodoRowView(todo: Binding(get: { todo }, set: { todo = $0 }))
                    } //binding; free to change
                    .searchable(text: $todoManager.searchTerm)
                    .navigationTitle("Todos")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            
                            EditButton()
                        }
                        
                        ToolbarItemGroup(placement: .navigationBarTrailing){
                            
//        #if DEBUG
//                            Button{
//                                showConfirmAlert = true
//                            }label: {
//                                Image(systemName: "clipboard")
//                            }
//        #endif//ignored if not in debug release scheme
                            
                            Button{
                                showSheet = true
                            }label: {
                                Image(systemName: "plus")
                            }
                        }
                    }
                    
                    .sheet(isPresented: $showSheet) {
                        NewTodoView(sourceArray: $todoManager.todos)
                            .presentationDetents([.medium])
                    }
                    .alert("Load sample data? Warning: All existing data will be deleted", isPresented: $showConfirmAlert){
                        Button("Replace", role: .destructive){
                          //  $todoManager.loadSampleData
                        }
                    }
                }
            }
        }

 

struct MainTodoListView_Previews: PreviewProvider {
    static var previews: some View {
        MainTodoListView(todoManager: TodoManager())    }
}
