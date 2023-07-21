//
//  MainView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct MainView: View {
  @StateObject var mainVM: MainViewModel

  init(mainViewModel: MainViewModel) {
    _mainVM = StateObject(wrappedValue: mainViewModel)
  }


  var body: some View {
    NavigationView{
      ZStack{
        Image("bg").resizable()
        MainContent(mainVM: mainVM)
        BottomBar(mainVM: mainVM).opacity(Constants.opacityLow)
      }
      .navigationBarItems(
        leading:
          HStack{
            Button(action: {print("Hello Button")}){
              Image("LogoMeditap")
                .renderingMode(.original)
                .resizable()
                .frame(width:90, height:20)
            }
          },
        trailing:
          HStack(){
            Button(action: {print("Hello Print")}){
              Image(systemName: "bell")
                .resizable()
                .frame(width:20, height:20)
                .foregroundColor(Color.iPurple)
            }
          }
      )

      .navigationBarTitle("", displayMode: .inline)
    }.ignoresSafeArea(edges: .bottom)

  }
}


private struct MainContent: View {
  @StateObject var mainVM: MainViewModel

  var body: some View {
    ZStack {
      switch mainVM.currentPage {
      case .catalog:
        CatalogView()
      case .home:
        HomeView()
        //          .navigationBarHidden(true)
      case .profile:
        ProfileView()
      }
    }
  }

}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView(mainViewModel: MainViewModel(selectedPage: .home))
  }
}
