//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Praveen Jangre on 13/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{
            computeTotalExpense()
        }
    }
}

#Preview {
    ContentView()
}
