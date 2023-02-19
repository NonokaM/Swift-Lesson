//
//  ContentView.swift
//  MyMap
//
//  Created by MOMII Nonoka on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView(searchKey: "羽田空港")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
