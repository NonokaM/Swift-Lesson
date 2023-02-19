//
//  BackgroundView.swift
//  MyMusic
//
//  Created by MOMII Nonoka on 2023/02/19.
//

import SwiftUI

struct BackgroundView: View {
    
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}
