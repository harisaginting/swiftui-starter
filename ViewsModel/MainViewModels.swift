//
//  MainViewModels.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import Foundation


class MainViewModel: ObservableObject {

  @Published var currentPage: Page
  @Published var currentPageWasRetapped = false

  init(selectedPage: Page = .home){
      self.currentPage = selectedPage
  }

  enum Page {
    case catalog
    case home
    case profile
  }

}
