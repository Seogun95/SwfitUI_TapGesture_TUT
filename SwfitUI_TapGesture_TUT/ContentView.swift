//
//  ContentView.swift
//  SwfitUI_TapGesture_TUT
//
//  Created by 김선중 on 2021/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Image("seogun")
            
            .scaleEffect(scale)
            .gesture(
                LongPressGesture(minimumDuration: 1)
                    .onEnded { _ in
                        scale /= 2
                    }
            )
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
