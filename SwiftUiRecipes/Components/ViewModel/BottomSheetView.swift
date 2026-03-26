//
//  BottomSheetView.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 20/03/2026.
//

import SwiftUI

struct BottomSheetView: View {
    @State var isOpen = false
    var body: some View {
       
        Button("BottomSheet"){
            print("op")
            isOpen.toggle(
                
            )
            print(isOpen)
        }
        .sheet(isPresented: $isOpen) {
           
            AddView()
            .presentationDetents([.height(300), .large])
          
        }
    }
}


struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
      
        NavigationView {
            VStack(alignment: .center , ){
               
                HStack {
                    Text("Open")
                        
                  
                    
                   
                }
            }
            .navigationTitle("Add Items")
            .navigationBarItems(trailing: Button("Close"){
                presentationMode.wrappedValue.dismiss()
            })
            
        }
       
    }
}

#Preview {
    BottomSheetView()
}
