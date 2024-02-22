//
//  AccountView.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

struct AccountView: View {
    var onDoneSuccess: () -> Void
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ProfileNavigationLink(username: "demodemo", email: "plsfix@me.com")
                }
            }
            .navigationBarTitle("Account", displayMode: .inline)
            .toolbar {
                Button("Done") {
                    onDoneSuccess()
                }
            }
            
        }
        
    }
}

#Preview {
    AccountView(onDoneSuccess: {})
}
