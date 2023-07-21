//
//  CustomFonts.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

extension Font {
  enum Avenir {
    case book
    case medium
    case heavy
    case black

    var value: String {
      switch self {
      case .book:
        return "Avenir-Book"
      case .medium:
        return "Avenir-Medium"
      case .heavy:
        return "Avenir-Heavy"
      case .black:
        return "Avenir-Black"
      }
    }
  }

  static func avenir(_ type: Avenir, size: CGFloat = Constants.fontXLarge) -> Font {
      return .custom(type.value, size: size)
  }
}
