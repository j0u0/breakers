//
//  ContentView.swift
//  breakers
//
//  Created by jabez on 21/10/2026.
//


import SwiftUI

struct oldContentView: View {
    /*
     like a box of legos
     - Views(ContentView) are composed of smaller legoes(text, images, etc), it is a larger lego
     - VStack is an instruction manual for a bag of legos, serving as guide to build a lego/view
        - returns a tupleView
	 
     */
    var body: some View {
        VStack(alignment: .center, content: greetings)
        .padding()
	}
    
	/*
	 - greetings internally returns `TupleView<(Some View, Text, Circle>`, abstracted as some View → dynamic interpretation from swift
	 - Image with its modifiers decomposes to `some View` rather than an Image type; broadly there are 2 families of view modifiers
	 1. type-specific modifiers which return the same concrete type
	 2. layout and wrapper modifiers, applicable on any type which decomposes view to `some View`
	 */
    @ViewBuilder
    func greetings() -> some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello, world!").font(.largeTitle)
		Circle()
    }
}

// view modifiers are used to build UI e.g buttons, date pickers
