//
//  LargeBlock.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 04/03/2024.
//

import SwiftUI

struct LargeBlock: View {
    let location: String
    let shopname: String
    let description: String
    let photoURL: String
    
    init(location: String, shopname: String, description: String, photoURL: String) {
        self.location = location
        self.shopname = shopname
        self.description = description
        self.photoURL = photoURL
    }
    
    private var readyOrder = false
    
    var body: some View {
      ZStack(alignment: .leading) {
        VStack(alignment: .leading) {
          Text(location)
            .font(.headline)
            .foregroundColor(Color(UIColor.label))
            .opacity(0.5)
            
                Text(shopname)
                    .font(.title)
                    .foregroundColor(Color(UIColor.label))
                    .fontWeight(.bold)
          
            Image(photoURL)
                .resizable()
            Spacer()

          Text(description)
                .foregroundColor(Color(UIColor.label))
                .opacity(0.8)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
      }
      .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 1.1)
      .background(
        Color(UIColor.secondarySystemBackground)
            .opacity(0.9)
          )
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .padding(.vertical, 8)
    }
}

#Preview {
    LargeBlock(location: "City name example", shopname: "Farm name example", description: "Description example", photoURL: "planetgreen")
}
