//
//  AuthKey.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//
import Foundation
struct AuthKey: Decodable {
  var accessToken: String
  var refreshToken: String
  var scope: String

  private enum CodingKeys: String, CodingKey {
    case accessToken = "access_token"
    case refreshToken = "refresh_token"
    case scope
  }
}
