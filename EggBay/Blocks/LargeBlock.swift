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
    
    init(location: String, shopname: String, description: String) {
        self.location = location
        self.shopname = shopname
        self.description = description
    }
    
    var body: some View {
      ZStack(alignment: .leading) {
        VStack(alignment: .leading) {
          Text(location)
            .font(.headline)
            .foregroundColor(.secondary)
          
          Text(shopname)
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            
            Image("profile")
                .resizable()
            Spacer()

          
          
          Text(description)
            .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
      }
      .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 1.1)
      .background(Color(UIColor.tintColor))
      .clipShape(RoundedRectangle(cornerRadius: 20))
      .padding(.vertical, 8)
    }
}

#Preview {
    LargeBlock(location: "City name example", shopname: "Farm name example", description: "Description example")
}
