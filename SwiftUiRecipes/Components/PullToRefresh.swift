//
//  PullToRefresh.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 17/03/2026.
//

import SwiftUI

struct PullToRefresh: View {
    @State private var refreshDates:[Date] = []
    var body: some View {
     
        NavigationStack{
            List(refreshDates, id: \.self){ date in
                Text("\(date)")
                
            }.listStyle(.plain)
                .refreshable {
                    DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
                        let currentDate = Date()
                        refreshDates.append(currentDate)
                    }
                }
            .navigationTitle("Pull to refresh")
        }
    }
}

#Preview {
    PullToRefresh()
}
