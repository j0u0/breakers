//
//  File.swift
//  breakers
//
//  Created by jabez on 28/10/2026.
//

import SwiftUI

enum Match {
	case match
	case nomatch
	case inexact
}


struct MatchMarkers: View {
	var matches: [Match]
	var body: some View {
		HStack {
			VStack {
				matchMarker(peg: 0)
				matchMarker(peg: 1)
			}
			VStack {
				matchMarker(peg: 2)
				matchMarker(peg: 3)
			}
		}
	}
	
	// peg refers to position of pegs/match markers
	func matchMarker(peg: Int) -> some View {
		let exactCount: Int = matches.filter({ match in match == .match}).count
		let foundCount: Int = matches.filter({ match in match != .nomatch}).count
		
		// fill circle on exact matches, fill borders only on exact
		// or inexact matches i.e found ones
		// order is first column, top-down, then next col -> matches being filled from "front" first
		return ZStack {
			Circle()
				// utilisation of primary colours accounts for light-dark modes
				.fill(exactCount > peg ? Color.primary : Color.clear)
				.strokeBorder(foundCount > peg ? Color.primary : Color.clear, lineWidth: 2)
				.aspectRatio(1, contentMode: .fit)
			
			Text("\(peg)")
				.font(.caption)
				.bold()
		}
	}
}

#Preview {
	MatchMarkers(matches: [.inexact, .match, .inexact, .nomatch])
}
