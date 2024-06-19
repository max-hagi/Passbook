//
//  PassCollectionViewModel.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-19.
//

import Foundation
import Combine

class PassCollectionViewModel: ObservableObject{
    @Published var passes: [Pass] = []
    
    
    func createPass(name: String, id: Int, code: String){
        let newPass = Pass(title: name, barcode: code)
        passes.append(newPass)
    }
}

