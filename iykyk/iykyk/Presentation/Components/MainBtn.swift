//
//  MainBtn.swift
//  iykyk
//
//  Created by JordannKo on 4/9/25.
//

import SwiftUI

struct MainBtn: View {
  let buttonTitle: String
  let isMainColor: Bool = true
  let action: () -> Void
  
  var body: some View {
    Button {
      action()
    } label: {
      ZStack {
        Rectangle()
          .frame(width: screenWidth-50, height: 50)
          .foregroundStyle(isMainColor ? .main : .white)
          .clipShape(.buttonBorder)
          .overlay {
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.main, lineWidth: isMainColor ? 0 : 1)
          }
          
        Text(buttonTitle)
          .font(Font.pretendard(.bold, size: 18))
          .foregroundStyle(isMainColor ? .white : .main)
      }
    }
  }
}

#Preview {
  MainBtn(buttonTitle: "새로운 채팅방 만들기", action: {})
}
