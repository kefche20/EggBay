//
//  ProfileNavigationLink.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

struct ProfileNavigationLink: View {
    let username: String
    let email: String
    let image: Image = Image(systemName: "person.crop.circle.fill")
    
    var body: some View {
        NavigationLink(destination: EmptyView(), label: {HStack {
            image
                .font(.system(size:50))
                .padding(.horizontal, 5)
            VStack (alignment: .leading, spacing: 5)
            {
                Text(username)
                Text(email)
                    .font(.caption)
            }
        }})
    }
}

struct ProfileNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
      ProfileNavigationLink(username: "Ivan Ivanov", email: "ivan@ivanov.bg")
        .previewLayout(.sizeThatFits)
    }
}
