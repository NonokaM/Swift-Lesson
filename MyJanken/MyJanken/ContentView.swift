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
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // グー画像を表示
                Image("gu")
                // リサイズ指定
                    .resizable()
                // アスペクト比（縦横比）を維持する指定
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)

                
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)


            } else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)

            }


            Button {
                
                var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
                
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color(hue: 0.928, saturation: 0.442, brightness: 1.0))
                    .foregroundColor(Color.white)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
