//
//  CollapsibleList.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 18/03/2026.
//

import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let hike: [Hike]
    
}
struct Hike: Identifiable {
    let id = UUID()
    let name: String
}
func getPlace()-> [Place]{
    return [Place(name: "India", hike: [Hike(name: "Best place to visit")]),Place(name: "USA", hike: [Hike(name: "No to wars")])]

}
struct CollapsibleList: View {
    @State private var  places = getPlace()
    @State private var expanded:Bool = false
    @State private var selectedName:String?
    var body: some View {
         
            
            List(places){ places in
                
                VStack (alignment: .leading){
                    HStack {
                        Text(places.name)
                            .font(.headline)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: selectedName == places.name ? "chevron.down" : "chevron.right")
                        
                    }.contentShape(Rectangle())
                        .onTapGesture(perform: {
                            expanded.toggle()
                            selectedName =  expanded ? places.name: nil
                        })
                    if selectedName == places.name{
                        ForEach(places.hike) { hike in
                            Text(hike.name)
                        }
                    }
                }
            
            }
            
        }
    }


#Preview {
    CollapsibleList()
}
