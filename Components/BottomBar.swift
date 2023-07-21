//
//  SwiftUIView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

// TODO: Get the real currently played media.

struct BottomBar: View {
  @StateObject var mainVM: MainViewModel

  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      Group {
        BottomNavigationBar(mainVM: mainVM)
      }
    }
    .ignoresSafeArea(.keyboard, edges: .bottom)
  }
}

private struct BottomNavigationBar: View {
  @StateObject var mainVM: MainViewModel

  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        HStack {
          BottomNavigationItem(mainVM: mainVM,
                               assignedPage: .catalog,
                               itemName: "catalog",
                               iconWhenUnselected: Image(systemName: "magazine"),
                               iconWhenSelected: Image(systemName: "magazine.fill"))
          BottomNavigationItem(mainVM: mainVM,
                               assignedPage: .home,
                               itemName: "home",
                               iconWhenUnselected: Image(systemName: "house.circle"),
                               iconWhenSelected: Image(systemName: "house.fill"))
          BottomNavigationItem(mainVM: mainVM,
                               assignedPage: .profile,
                               itemName: "profile",
                               iconWhenUnselected: Image(systemName: "person.circle"),
                               iconWhenSelected: Image(systemName: "person.fill"))
        }
        .frame(height: 60)
        .background(Color.iRed.opacity(1))

        // To fill the bottom safe area
//        Rectangle()
//          .fill(Color.red)
//          .ignoresSafeArea()
//          .frame(height: 0)
      }
    }
  }

  private struct BottomNavigationItem: View {
    @StateObject var mainVM: MainViewModel
    var assignedPage: MainViewModel.Page

    var itemName: String
    var iconWhenUnselected: Image
    var iconWhenSelected: Image

    var thisPageIsTheCurrentPage: Bool {
      mainVM.currentPage == assignedPage
    }

    var body: some View {
      VStack(alignment: .center, spacing: 5) {
        Spacer()
        buildIcon()
        Text(itemName).font(.avenir(.medium, size: Constants.fontXXSmall))
      }.frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .onTapGesture {
          mainVM.currentPage = assignedPage
          if mainVM.currentPage == assignedPage {
            mainVM.currentPageWasRetapped = true
          }
        }
        .foregroundColor(thisPageIsTheCurrentPage ? .iWhite : .black.opacity(Constants.opacityHigh))
    }

    func buildIcon() -> some View {
      var icon: Image

      if thisPageIsTheCurrentPage {
        icon = iconWhenSelected
      } else {
        icon = iconWhenUnselected
      }

      return icon.resizable().scaledToFit()
        .colorMultiply(thisPageIsTheCurrentPage ? .iWhite : .black.opacity(Constants.opacityHigh))
        .frame(width: 30)
    }
  }

}


struct BottomBar_Previews: PreviewProvider {
  static var previews: some View {
    BottomBar(mainVM: MainViewModel())
  }
}
