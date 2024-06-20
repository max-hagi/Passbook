//
//  HomeView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var passCollectionViewModel = PassCollectionViewModel()
    
    var body: some View {
        VStack{
            Text("Passbook").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.top)
            Spacer()
            PassCollectionView(viewModel: passCollectionViewModel)
                .cornerRadius(3)
            Spacer()
        }
        

    }
}

#Preview {
    HomeView()
}
