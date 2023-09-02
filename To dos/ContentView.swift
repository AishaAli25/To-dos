//
//  ContentView.swift
//  To dos
//
//  Created by Aisha Ali on 19/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [Todo(title: "Feed the cat", isCompleted: true),
                                Todo(title: "Play with cat", subtitle: "Use his favourite toy!"),
                                Todo(title: "Groceries"),
                                Todo(title: "Call mom"),
                                Todo(title: "Go for a run"),
                                Todo(title: "Read a book")]
    var body: some View {
        NavigationStack {
            VStack {
                List($todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName:
                                    todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                            VStack(alignment: .leading) {
                                Text(todo.title)
                                    .strikethrough(todo.isCompleted)
                                if !todo.subtitle.isEmpty {
                                    Text(todo.subtitle)
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                        .strikethrough(todo.isCompleted)
                                }
                            }
                        }
                    }
                    .navigationTitle("Todos")
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

