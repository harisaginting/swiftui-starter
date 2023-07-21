//
//  HomeView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct HomeView: View {
  @State private var size = CGSize.zero
  @State private var selection = 0
  var body: some View {
    VStack{
      Section{
        Image("Card")
          .resizable()
          .frame(width: .infinity)
      }
      .frame(width: .infinity, height: 200)
      .background(Color.iGrey)
      .cornerRadius(20)
      .padding(.horizontal,20)

      HStack{
        Section{
          Image("Card")
            .resizable()
            .frame(width: .infinity)
        }
        .frame(width: .infinity, height: 100)
        .background(Color.iGrey)
        .cornerRadius(20)

        Section{
          Image(systemName: "qrcode.viewfinder")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundColor(Color.iGold)
            .padding(20)
        }
        .frame(width: 100, height: 100)
        .background(Color.iGrey)
        .cornerRadius(20)
      }.padding(.horizontal,20)



      Section{
        VStack {
          // ROW 1
          HStack{
            // KELUARGA
            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "person.3")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("family")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)

            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "person.text.rectangle.fill")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("license")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)

            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "doc.plaintext")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("securities")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)
            }

          }.padding(.top, 20)

          // ROW 2
          HStack{
            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "cross.case")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("insurance")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)

              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)

            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "banknote")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("tax")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)
            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "shield")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("policies")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)
            }



          }.padding(.top,10)


          // ROW 3
          HStack{
            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                Image(systemName: "questionmark.circle")
                  .resizable()
                  .scaledToFit()
                  .frame(width:40, height: 40)
                  .padding(10)
                  .foregroundColor(Color.iRed)
                  .background(Color.iGrey)
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.iRed
                              , lineWidth: 2)
                  )
                Text("FAQ")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iRed)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)

            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                EmptyView()
                  .frame(width:40, height: 40)
                  .padding(10)
                Text("")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iGrey)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)
            }

            Button(action: {print("hai")}){
              VStack(alignment: .center, spacing: 0) {
                EmptyView()
                  .frame(width:40, height: 40)
                  .padding(10)
                Text("")
                  .font(.avenir(.heavy, size: Constants.fontXXSmall))
                  .foregroundColor(Color.iGrey)
                  .padding(.top,3)
              }
              .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .padding(.bottom,5)
            }

          }.padding(.top,10)

          Spacer()
        }
      }
      .background(Color.iRed.opacity(Constants.opacityXXHigh))
      .cornerRadius(37.5)
    }
    .frame(maxHeight: .infinity)
    .ignoresSafeArea()
    .padding(.top,1)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
//    HomeView()
    MainView(mainViewModel: MainViewModel(selectedPage: .home))
  }
}
