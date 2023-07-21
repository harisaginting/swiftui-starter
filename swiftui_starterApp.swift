//
//  swiftui_starterApp.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

@main
struct swiftui_starterApp: App {
    var body: some Scene {
      WindowGroup {
        MainView(mainViewModel: MainViewModel(selectedPage: .home))
//            LoginView()
      }
    }
}

struct App_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
