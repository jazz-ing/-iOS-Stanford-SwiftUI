//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        // Zstack - combiner view
        ZStack {
            // bag of logo(view)
            RoundedRectangle(cornerRadius: 25)
                .stroke()
                .foregroundColor(.blue)
            Text("hello, world!")
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
