//
//  CheckBoxes.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 20/03/2026.
//

import SwiftUI

struct CheckBoxes: View {
    @State private var isCheckBoxClicked:Bool = false
    @State private var selectedFruits:[String] = []
    var body: some View {
    let fruits = ["Apple", "Orange", "Kiwi"]
        VStack(alignment: .leading) {
            List(fruits , id: \.self){ fruit in
                HStack{
                    Text(fruit)
                    Spacer()
                    ZStack {
                        if selectedFruits.contains(fruit){
                            Image(systemName: "checkmark.square.fill")
                                .tint(.blue)
                        }
                        else {
                            Image(systemName: "square")
                        }
                       
                    }.onTapGesture {
                        if selectedFruits.contains(fruit){
                            selectedFruits = selectedFruits.filter{$0 != fruit}
                            print("UnselectedFruits \(selectedFruits)")
                         
                        }
                        else {
                            selectedFruits.append(fruit)
                            print("selected: \(fruit)")
                        }
                    }
                }
                }
              
           
         
        }
       
    }
}

#Preview {
    CheckBoxes()
}
