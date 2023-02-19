//
//  ContentView.swift
//  MyMusic
//
//  Created by MOMII Nonoka on 2023/02/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            HStack{
                Button {
                    
                } label: {
                    Image("cymbal")
                }
                
                Button {
                    
                } label: {
                    Image("guitar")
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
