//
//  GroupListItem.swift
//  SwiftUiRecipes
//
//  Created by Zakir Khan on 17/03/2026.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}
struct Comment: Identifiable {
    let id =  UUID()
    let title:  String
}
struct GroupListItem: View {
    let posts = [Post(title: "Post-1", comments: [Comment(title: "Comment one for post one")]), Post(title: "Post-2", comments: [Comment(title: "Comment two for post one")])]
    var body: some View {
        List{
            ForEach(posts) { post in
                Section(header: Text(post.title)) {
                    ForEach(post.comments){
                        comment in
                        Text(comment.title)
                       
                    }
                }
            }
            
        }.listStyle(GroupedListStyle())
    }
}

#Preview {
    GroupListItem()
}
