//
//  MapView.swift
//  MyMap
//
//  Created by MOMII Nonoka on 2023/02/20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let searchKey: String
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        print("検索キーワード:\(searchKey)")
        
    }

}

//プレビュー時のみ、シュミレータでアプリを実行した時には実行されない
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港")
    }
}
