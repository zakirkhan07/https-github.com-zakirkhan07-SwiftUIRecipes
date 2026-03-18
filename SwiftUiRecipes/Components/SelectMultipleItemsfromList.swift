//
//  SelectMultipleItemsfromList.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 18/03/2026.
//

import SwiftUI

struct Customer: Identifiable {
    let id = UUID()
    let name: String
}
struct SelectMultipleItemsfromList: View {
    @State var customers = [Customer(name: "Alex"), Customer(name: "Rex"), Customer(name:"Azy")]
    @State var selectionIds = Set<UUID>()
    var body: some View {
        NavigationStack{
            
            List(customers, selection: $selectionIds){ customer in
                Text(customer.name)
                
            }
            .toolbar{
                EditButton()
            }
            .navigationTitle("Selected \(selectionIds.count)")
        }
    }
}

#Preview {
    SelectMultipleItemsfromList()
}
