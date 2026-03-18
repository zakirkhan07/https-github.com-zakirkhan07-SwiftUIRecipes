//
//  ListItemView.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 16/03/2026.
//

import SwiftUI


struct Friends: Identifiable {
    let id = UUID()
    let name: String
   
}
struct ListItemView: View {
    @State  var taskName:String
    @State private var task: [String] = []
    
    let freinds = [Friends(name: "zakir"), Friends(name: "sakir"), Friends(name: "Nasir")]
    
    private func deleteTask(indexSet: IndexSet) {
     
            task.remove(atOffsets: indexSet)
        
        
       
        
    }
    func moveTask(source: IndexSet ,  destiantion: Int){
         print("called" , source , destiantion)
            task.move(fromOffsets: source, toOffset: destiantion)
        
    }
    var body: some View {
        NavigationStack{
            VStack{
                
                
                HStack {
                    TextField("Enter your task", text: $taskName)
                    Button("add your task"){
                        task.append(taskName)
                        taskName = ""
                    }
                    
                }
                
                List{
                    ForEach(task, id: \.self) { task in
                      Text(task)
                    }.onDelete(perform: deleteTask)
                    .onMove(perform: moveTask)
                 
                    
                } .navigationTitle("List")
                .toolbar{
                    EditButton()
                }
            }
           
        }
            
      
    }
}

#Preview {
    ListItemView(taskName: "Enter your tasks")
}
