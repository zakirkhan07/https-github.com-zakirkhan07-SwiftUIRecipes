//
//  ListViewBackgroundColorChange.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 17/03/2026.
//

import SwiftUI

struct ListViewBackgroundColorChange: View {
    var body: some View {
        //for changing the background color we need to use scroll view
        ScrollView {
            LazyVStack(alignment: .leading){
                ForEach(1...20 , id: \.self) { index in
                    Text("\(index)")
                    
                    
                }.padding()
            }.background(Color.green )
       
        }
//        List(1...20 , id:\.self){ index in
//            Text("\(index)")
//        }.listRowBackground(Color.red)
    }
}

#Preview {
    ListViewBackgroundColorChange()
}
