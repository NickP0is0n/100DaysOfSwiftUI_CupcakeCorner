//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Mykola Chaikovskyi on 02.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"), scale: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
