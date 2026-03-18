//
//  FilterfromList.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 17/03/2026.
//

import SwiftUI

struct Places: Identifiable {
    let id = UUID()
    let title: String
    let photos: UIImage?
}
func getPlaces() -> [Places]{
    let config = UIImage.SymbolConfiguration(pointSize: 30, weight: .medium)
    return [Places(title: "India", photos: UIImage(systemName: "heart.fill" ,withConfiguration: config)) , Places(title:"Japan" , photos: UIImage(systemName: "star")),
            Places(title:"USA" , photos: UIImage(systemName: "star")),
            Places(title:"Srilanka" , photos: UIImage(systemName: "star")),
            Places(title:"UK" , photos: UIImage(systemName: "star")),
            Places(title:"UAE" , photos: UIImage(systemName: "star")),
            Places(title:"IRAN" , photos: UIImage(systemName: "star"))
    ]
}
struct FilterfromList: View {
    //how to make list entire clickiable
    @State private var selectedIndex: Int?
    @State private var search:String = ""
    @State private var places = getPlaces()
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(places.enumerated()), id:\.element.id)
                {index, place in
                    HStack{
                        if let photos = place.photos {
                            Image(uiImage: photos)
                        }
                        
                        Text(place.title)
                        Spacer()
                        
                    }
                    .swipeActions(edge: .leading){
                        Button{
                            
                        } label: {
                            Label("Heart", systemImage: "heart.circle")
                        }.tint(.yellow)
                        
                    }
                    .swipeActions(edge: .trailing) {
                        Button{} label: {
                            Label("Archive", systemImage: "archivebox.circle.fill")
                        }.tint(.red)
                    }

                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedIndex = index
                    }
                    .background(selectedIndex == index ?
                                Color.blue.opacity(0.2) : Color.clear)
                    
                }
                
            }.listStyle(.plain)
                .searchable(text: $search)
                .onChange(of: search, perform: {
                    value in
                    if !value.isEmpty && value.count >= 1 {
                        places = places.filter {
                            $0.title.lowercased().hasPrefix(value.lowercased())
                            
                        }
                    }
                    else {
                        places = getPlaces()
                    }
                })
        }
    }

}

#Preview {
    FilterfromList()
}
