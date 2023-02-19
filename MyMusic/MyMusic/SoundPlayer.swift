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
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            // シンバル用のプレイヤーに音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            // シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("cymbal,error")
        }
    }
    
    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("guitar.error")
        }
    }
}
