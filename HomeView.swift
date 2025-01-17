//
//  HomeView.swift
//  CUNYCoin
//
//  Created by Amit Aharoni on 11/4/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showSpendingView = false
    var studentName: String
    
    var body: some View {
        VStack {
            Text("Welcome, \(studentName)")
                .font(.title)
                .padding()

            NavigationLink(destination: BottleScannerView(studentName: studentName)) {
                Text("Scan Bottles")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding()
            Button("Spend Tokens") {
                showSpendingView = true
            }
            
            .sheet(isPresented: $showSpendingView) {
                SpendingView(showSpendingView: $showSpendingView)
            }
        }
    }
}

