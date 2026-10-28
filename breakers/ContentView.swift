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
			Text("peggies")
		}
		VStack {
			pegs(colours: [.red, .green, .blue, .white])
			pegs(colours: [.red, .green, .blue, .white])
			pegs(colours: [.red, .green, .blue])
			
		}.padding()
	}
	
	func pegs(colours: Array<Color> = []) -> some View {
		HStack {
//			ForEach(colours.indices, id: \.self) { c in
//				RoundedRectangle(cornerRadius: 10)
//					.aspectRatio(1, contentMode: .fit)
//					.foregroundStyle(colours[c])
//			}
			
			ForEach(0..<4, id: \.self) { peg in
				RoundedRectangle(cornerRadius: 10)
					.aspectRatio(1, contentMode: .fit)
					.foregroundStyle(colours.indices.contains(peg) ? colours[peg] : .primary)
			}
			MatchMarkers(matches: [.inexact, .match, .inexact, .nomatch])
		}
	}
	
}

#Preview {
	ContentView()
}
