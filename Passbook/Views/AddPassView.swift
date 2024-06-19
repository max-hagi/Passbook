//
//  AddPassView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct AddPassView: View {
    
    @State private var newPassCode: String = ""
    @State private var newPassName: String = ""
    
    var body: some View {
        
        VStack{
            
            Text("New Pass")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            
            Form {
                TextField(
                    "Pass name",
                    text: $newPassName
                )
                TextField(
                    "Barcode (will change to scan)",
                    text: $newPassCode
                )
                Button(action: {}) {Text("Create")}
            }
            .cornerRadius(4.0)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    AddPassView()
}
