//
//  ContentView.swift
//  MyFirst
//
//  Created by MOMII Nonoka on 2023/02/15.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, World!"
    
    var body: some View {
        
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("切り替えボタン") {
                outputText = "Hi, Swift!"
            }
            .padding(.all)
            .background(Color.blue)
            .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
