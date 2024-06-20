//
//  PassCollectionViewModel.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-19.
//

import Foundation
import Combine

class PassCollectionViewModel: ObservableObject{
    @Published private(set) var passes: [Pass] = []
    
    
    func createPass(name: String, id: Int, code: String){
        //FIXME fix ID to be unique every time
        let newPass = Pass(id:id ,title: name, barcode: code)
        passes.append(newPass)
    }
    
    func getPasses() -> [Pass]{
        return passes
    }
    
    func getPassCount() -> Int {
        return passes.count
    }
}

