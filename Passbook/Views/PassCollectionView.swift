//
//  CarouselView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct PassCollectionView: View {
    
    @ObservedObject var viewModel: PassCollectionViewModel
    @State private var showAddPassView = false
    
    
    var body: some View {
        VStack {
            if (viewModel.passes.count == 0){
                VStack{
                    Text("You have no passes").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Button(
                        action:{showAddPassView = true}){
                            Label("Add Pass", systemImage: "plus").font(.title2)
                        }
                        .padding()
                }
            }
            
            else {
                VStack{
                    Button(
                        action:{showAddPassView = true}){
                            Label("Add Pass", systemImage: "plus").font(.title2)
                        }
                        .padding()
                    
                    ScrollView {
                        // Adjust the spacing to control the overlap
                        VStack(spacing: -40) {
                            ForEach(viewModel.passes.indices, id: \.self) { index in
                                PassView(pass: viewModel.passes[index])
                                    .offset(y: CGFloat(index) * -40)
                                
                            }
                        }
                        .padding(.top, 20)
                    }
                }
            }
        }
        .sheet(isPresented: $showAddPassView) {
                AddPassView(isPresented: $showAddPassView, viewModel: viewModel)
            
        }
    }
    
}

// Preview
struct PassCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PassCollectionView(viewModel: PassCollectionViewModel())
    }
}
