//
//  Pass.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-13.
//

import Foundation

struct Pass: Identifiable {
    var id = UUID()
    var title: String
    var barcode: String
}
