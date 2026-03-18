//
//  AutoScroll.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 18/03/2026.
//

import SwiftUI

struct AutoScroll: View {
    var body: some View {
        ScrollViewReader{proxy in
            VStack {
                Button("auto scroll"){
                    withAnimation{
                        proxy.scrollTo(100)
                    }
                }
                List(1...20 , id: \.self){ index in
                    Text("\(index)")
                        .id(index)
                    
                }
            }
          
        }
    }
}

#Preview {
    AutoScroll()
}
 
