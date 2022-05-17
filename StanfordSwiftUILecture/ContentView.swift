//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
        }
        .padding()
        .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
