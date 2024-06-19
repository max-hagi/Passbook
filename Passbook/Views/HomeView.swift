//
//  HomeView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("Passbook").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.top)
            HStack{
                Button(action:{}) {
                    Label("Add Pass", systemImage: "plus").font(.title2)
                }
                .padding([.top, .leading, .trailing])
    
            }
        }
        
        PassCollectionView()
            .cornerRadius(3)
    }
}

#Preview {
    HomeView()
}
