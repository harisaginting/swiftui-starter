//
//  CatalogView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//
import SwiftUI

struct CatalogView: View {
    var body : some View {
      VStack{
        ScrollView(){
          cellKontent(image: "LogoMeditap", judul: "Catalog #1", deskripsi: "Ini Catalog 1")
          cellKontent(image: "LogoMeditap", judul: "Catalog #2", deskripsi: "Ini Catalog 2")
          cellKontent(image: "LogoMeditap", judul: "Catalog #3", deskripsi: "Ini Catalog 3")
        }
        .padding(10)
        .frame(maxWidth: .infinity)
        .background(Color.iBlue.opacity(Constants.opacityXXHigh))
        .ignoresSafeArea(edges: [.bottom])
      }
    }
}

//Buat kerangka
struct cellKontent : View {
    var image: String
    var judul: String
    var deskripsi: String

    var body : some View {
        VStack{
            Image(image)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)

            HStack(spacing:20){
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskripsi).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "square.and.arrow.up")
            }
        }
        .padding(10)
        .background(Color.iGrey)
        .cornerRadius(12)
        .frame(maxWidth: .infinity)


    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
//        CatalogView()
      MainView(mainViewModel: MainViewModel(selectedPage: .catalog))
    }
}
