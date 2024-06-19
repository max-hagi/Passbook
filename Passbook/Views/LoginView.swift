//
//  LoginView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack(alignment: .center){
            
            Text("Passbook")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
    
            Form {
                VStack{
                    TextField("Username",text: $username)
                    Divider()
                    SecureField(text: $password, prompt: Text("Required")) {}

                }
                VStack(alignment: .leading){
                    Button(action: {}) {Text("Sign In")}
                        .padding(.bottom)
                    Button(action: {}) {Text("Don't have an account?")}
                }
                
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
        }
        
        
    }
}

#Preview {
    LoginView()
}
