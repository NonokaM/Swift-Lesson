//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by MOMII Nonoka on 2023/02/19.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    // データ読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        // シンバル用のプレイヤーに音源データを指定
        cymbalPlayer = AVAudioPlayer(data: cymbalData)
        
        // シンバルの音源再生
        cymbalPlayer.play()
    }

}
