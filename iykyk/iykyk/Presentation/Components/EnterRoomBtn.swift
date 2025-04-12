//
//  EnterRoomBtn.swift
//  iykyk
//
//  Created by JordannKo on 4/12/25.
//

import SwiftUI

struct EnterRoomBtn: View {
  let action : () -> Void
  
  var body: some View {
    HStack {
      TextField("Enter Code", text: .constant(""))
        .padding(.leading, 15)
      
      Button {
        action()
      } label: {
        ZStack {
          Image(systemName: "arrow.right")
            .padding(.trailing, 0)
            .foregroundStyle(.white)
        }
        .frame(width: 60, height: 50)
        .background(.main)
        .clipShape(RoundedCorner(radius: 10, corners: [.topRight, .bottomRight]))
      }
    }
    .frame(width: screenWidth-50, height: 50)
    .overlay {
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color.main, lineWidth: 2)
    }
  }
}

struct RoundedCorner: Shape {
  var radius: CGFloat = 10
  var corners: UIRectCorner = [.topRight, .bottomRight]
    
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(
      roundedRect: rect,
      byRoundingCorners: corners,
      cornerRadii: CGSize(width: radius, height: radius)
    )
    return Path(path.cgPath)
  }
}

#Preview {
  EnterRoomBtn(action: {})
}
