//
//  GridView.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 20/03/2026.
//

import SwiftUI

struct GridView: View {
    let cloumns = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))]
    let columnsAdoptable = [GridItem(.adaptive(minimum: 100)), GridItem(.adaptive(minimum: 50)), GridItem(.adaptive(minimum: 50)),GridItem(.adaptive(minimum: 50))] 
    var body: some View {
        
        LazyVGrid(columns: columnsAdoptable, content: {
            ForEach(1...20 , id: \.self){ index in
                HStack {
                    Text("\(index)")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                    
                
            }
        })
    }
}

#Preview {
    GridView()
}
