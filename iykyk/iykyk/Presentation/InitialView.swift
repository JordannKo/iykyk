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
      
      Text("이 중 누가 나를 좋아할까요?")
        .foregroundStyle(.textGray)
    
      MainBtn(buttonTitle: "채팅방 만들기") {
        print("채팅방 만들기 버튼 눌렀어요.")
      }
      
      EnterRoomBtn {
        print("채팅방 입장 버튼 눌렀어요.")
      }
    }
  }
}

#Preview {
  InitialView()
}
