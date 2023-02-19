//
//  ContentView.swift
//  MyJanken
//
//  Created by MOMII Nonoka on 2023/02/19.
//

import SwiftUI

struct ContentView: View {

    @State var answerNumber = 0

    var body: some View {
        
        VStack {
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
            } else if answerNumber == 1 {
                // グー画像を表示
                Image("gu")
                // リサイズ指定
                    .resizable()
                // アスペクト比（縦横比）を維持する指定
                    .scaledToFit()
                Text("グー")
                
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Text("チョキ")

            } else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Text("パー")
            }


            Button {
                answerNumber = Int.random(in: 1...3)
            } label: {
                Text("じゃんけんをする！")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
