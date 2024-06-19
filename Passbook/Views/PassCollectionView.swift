//
//  CarouselView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct PassCollectionView: View {
    
    var body: some View {
        ScrollView {
            // Adjust the spacing to control the overlap
            VStack(spacing: -40) {
                ForEach(0..<5) { index in // Replace with your data array
                    PassView()
                        .offset(y: CGFloat(index) * -40)
                }
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    PassCollectionView()
}
