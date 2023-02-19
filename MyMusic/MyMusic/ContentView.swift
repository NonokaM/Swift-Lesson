//
//  ContentView.swift
//  MyMusic
//
//  Created by MOMII Nonoka on 2023/02/19.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        
        ZStack{
            
            BackgroundView(imageName: "background")

            HStack{
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                
                Button {
                    soundPlayer.guitarPlay()
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
