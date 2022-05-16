//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View { // View처럼 행동한다
    // View 프로토콜 채택시 필수 구현 사항
    var body: some View {
        // views -> lego blocks
        Text("hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
