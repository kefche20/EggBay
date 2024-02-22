//
//  ProductRow.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 22.02.24.
//

import SwiftUI

struct ProductRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Cucumber")
                Text("$6")
            }
            Spacer()
            Image("cucumber")
                .resizable()
                .frame(width: 50, height: 50)
        }.fontWeight(.bold)
    }
}

#Preview {
    ProductRow()
}
