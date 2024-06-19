//
//  PassView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-17.
//

import SwiftUI

struct PassView: View {
    
    @State private var passes: [Pass] = []
    
    var body: some View {
        VStack(spacing: 0) {
            // Top section with event details
            VStack(alignment: .leading, spacing: 8) {
                HStack{
                    Text("PASS")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Button(action:{}) {
                        Label("Share Pass", systemImage: "square.and.arrow.up").labelStyle(.iconOnly).foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
                
                Text("Event Details")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                HStack {
                    Text("DATE")
                        .font(.headline)
                        .foregroundColor(.white)
                    Spacer()
                    Text("TIME")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            
            // Middle section with barcode/QR code
            VStack {
                Image(systemName: "qrcode")
                    .resizable(capInsets: EdgeInsets())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160.0, height: 160.0)
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            
            // Bottom section with additional information
            VStack(alignment: .leading, spacing: 10) {
                Divider()
                
                HStack {
                    Text("Location")
                        .font(.subheadline)
                    Spacer()
                    Text("Venue")
                        .font(.subheadline)
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
            .background(Color.white)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(Color.gray.opacity(0.5), lineWidth: 1))
        .shadow(radius: 10)
        .padding()
        
    }
}

#Preview {
    PassView()
}
