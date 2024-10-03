//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Mykola Chaikovskyi on 02.10.2024.
//

import SwiftUI

class User: Codable, ObservableObject {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    
    @Published var name = "Taylor"
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(name, forKey: ._name)
    }
    
    init() {
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try(container.decode(String.self, forKey: ._name))
    }
}

struct ContentView: View {
    var body: some View {
        Button("Encode Taylor") {
            encodeTaylor()
        }
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
