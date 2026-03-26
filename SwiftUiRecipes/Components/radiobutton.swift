//
//  radiobutton.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 20/03/2026.
//

import SwiftUI

struct radiobutton: View {
    @State private var selectGender:String = ""
    
    let genders = ["male", "female", "others"]
    var body: some View {
        List(
            genders, id: \.self
        ){
            gender in
            HStack{
                Text(gender)
                Spacer()
                ZStack {
                    Image(systemName: selectGender == gender ? "smallcircle.fill.circle" : "circle")
                }.onTapGesture {
                    selectGender = gender
                }
            }
        }
    }
}

#Preview {
    radiobutton()
}
