//
//  ContentView.swift
//  BitriseTest
//
//  Created by Damien Murphy on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    let runNumber: Int
    var body: some View {
        Text(runNumber == 3 ? "Hello, world!" : "Hello, Bitrise!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(runNumber: 1)
    }
}
