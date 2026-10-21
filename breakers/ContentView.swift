//
//  ContentView.swift
//  breakers
//
//  Created by jabez on 21/10/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!").font(.largeTitle)
        } 
        .padding()
    }
}

// view modifiers are used to build UI e.g buttons, date pickers
//

#Preview {
    ContentView()
}
