//
//  ProfileView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    VStack{
      VStack{
        Image("profile")
          .resizable()
          .frame(width: 150, height: 150)
          .clipShape(Circle())
          .overlay(
            Circle()
              .stroke(Color.iGold, lineWidth: 5)
          )
        Text("Mr. Rungkad")
          .font(.avenir(.heavy, size: Constants.fontXXLarge))
          .foregroundColor(Color.iGold)
      }.padding(.top, 15)

      VStack{

        Spacer()
      }
      .frame(maxWidth: .infinity)
      .background(Color.iRed.opacity(Constants.opacityXXHigh))
      .cornerRadius(37.5)
      .ignoresSafeArea(edges: [.bottom])
    }
  }


}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    //        ProfileView()
    MainView(mainViewModel: MainViewModel(selectedPage: .profile))
  }
}
