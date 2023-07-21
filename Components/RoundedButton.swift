//
//  RoundedButton.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct RoundedButton: View {
  var text: String
  var isFilled = true
  var isStroked = false
  var icon: Image?
  var action: () -> Void

  var body: some View {
    Button(action: action) {
      HStack {
        if icon != nil {
          icon!
            .resizable()
            .renderingMode(.template)
            .scaledToFit()
            .padding(.vertical, 10)
        }
        Text(text)
          .font(.avenir(.heavy, size: Constants.fontXSmall))
          .tracking(1.5)
      }
      .padding(.horizontal, Constants.paddingSmall)
      .foregroundColor(isFilled ? Color.iWhite : Color.iRed)
      .frame(maxWidth: .infinity)
      .frame(height: 50)
    }
    .background( isFilled ? Capsule().foregroundColor(Color.iRed) : Capsule().foregroundColor(Color.iWhite))
    .background( isStroked ? Capsule().strokeBorder(Color.iRed) : Capsule().strokeBorder(Color.iWhite))
  }
}

struct RoundedButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      Spacer()
      RoundedButton(text: "isFilled true, isStroked false",
                    isFilled: true,
                    isStroked: false) {}
      RoundedButton(text: "isFilled false, isStroked false",
                    isFilled: false,
                    isStroked: false) {}
      RoundedButton(text: "isFilled false, isStroked true",
                    isFilled: false,
                    isStroked: true) {}
      RoundedButton(text: "isFilled true, isStroked true",
                    isFilled: true,
                    isStroked: true) {}
      Spacer()
    }
    .padding()
    .background(Color.iBlue)
  }
}
