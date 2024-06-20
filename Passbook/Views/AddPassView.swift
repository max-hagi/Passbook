//
//  AddPassView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct AddPassView: View {
    
    @Binding var isPresented: Bool
    @ObservedObject var viewModel: PassCollectionViewModel
    
    @State private var newPassCode: String = ""
    @State private var newPassName: String = ""
//    @State private var passType: String
    
    var body: some View {
        
        NavigationStack{
            //TODO add relevant info
            Form {
                TextField(
                    "Pass name",
                    text: $newPassName
                )
                TextField(
                    "Barcode (will change to scan)",
                    text: $newPassCode
                )
                
//                Section(header: Text("Pass Type")) {
//                    Picker("Pass Type", selection: $passType) {
//                        Text("Loyalty Card").tag(/*@START_MENU_TOKEN@*/"Tag"/*@END_MENU_TOKEN@*/)
//                    }
//                }
            
                HStack{
                    Spacer()
                    
                    Button(action: {
                        viewModel.createPass(name: newPassName, id: 1, code: newPassCode)
                        isPresented = false
                    }) {Text("Create")}
                        .padding(.horizontal)
                                    
                    Spacer()
          
                    // Why the fuck does this create a pass??
                    Button("Cancel", role: .destructive) {
                        isPresented = false
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
 
            .navigationBarTitle("Add Pass", displayMode: .large)
        }
        
    }
}

struct AddPassView_Previews: PreviewProvider {
    @State static var isPresented = true
    static var previews: some View {
        AddPassView(isPresented: $isPresented, viewModel: PassCollectionViewModel())
    }
}
