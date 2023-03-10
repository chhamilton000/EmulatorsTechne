//
//  ContentView.swift
//  Emulator_Techne
//
//  Created by Caley Hamilton on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var database = Firebase_Service()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{ database.get_dummy_data() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
