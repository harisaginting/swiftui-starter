//
//  ContentView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      WindowGroup {
        MainView(mainViewModel: MainViewModel(selectedPage: .home))
//            LoginView()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      LoginView()
    }
}
