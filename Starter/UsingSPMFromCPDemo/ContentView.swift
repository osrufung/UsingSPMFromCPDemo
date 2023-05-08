//
//  ContentView.swift
//  UsingSPMFromCPDemo
//
//  Created by Oswaldo Rubio on 28/4/23.
//

import SwiftUI
import FeatureA

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(FeatureA.name)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
