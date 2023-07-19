//
//  ContentView2.swift
//  ProdEase
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView2: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(
        entity: ToDo2.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo2.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo2>
    var body: some View {
        VStack {
            HStack {
                Text ("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer ()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                }
                
            }// end of HStack
            .padding()
            
            Spacer ()
            
            List {
                ForEach (toDoItems) { toDoItem in
                    
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)

            }
            
        }
        
        
        
        
        
        if showNewTask {
            NewToDoView( showNewTask: $showNewTask, title: "", isImportant: false)
            
            
        }
    }
        private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)
                
                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
        
        struct ContentView2_Previews: PreviewProvider {
            static var previews: some View {
                ContentView2()
            }
        }
        
    }
