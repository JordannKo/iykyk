//
//  InitialView.swift
//  iykyk
//
//  Created by JordannKo on 4/9/25.
//

import SwiftUI

struct InitialView: View {
  var body: some View {
    VStack {
      Text("iykyk")
        .foregroundStyle(.main)
        .font(Font.pretendard(.bold, size: 36))
        .padding(.bottom, 5)
      
      Text("Which one likes me?")
        .foregroundStyle(.textGray)
      
      Spacer().frame(height: 125)
    
      MainBtn(buttonTitle: "New Chat Room") {

      }
      
      EnterRoomBtn {

      }
    }
  }
}

#Preview {
  InitialView()
}
