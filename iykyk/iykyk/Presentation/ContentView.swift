//
//  ContentView.swift
//  iykyk
//
//  Created by JordannKo on 4/8/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
        .font(Font.pretendard(.thin, size: 32))
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
