//
//  HowManyMoreView.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import SwiftUI

struct HowManyMoreView: View {
     
            
            @ObservedObject var todoManager: TodoManager
            var body: some View {
                VStack {
                    Text("You have:")
                        .font(.largeTitle)
                    Text("\(todoManager.numTodosNotDone)")
                        .font(.system(size: 140))
                        .foregroundColor(.accentColor)
                        .padding()
                    Text("todos left.")
                        .font(.largeTitle)
                    Text("You have completed \(todoManager.numTodosDone) todos. Good job.")
                        .padding(.top)
                }
            } }

  

struct HowManyMoreView_Previews: PreviewProvider {
    static var previews: some View {
        HowManyMoreView(todoManager: TodoManager())    }
}
