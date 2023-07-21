//
//  ModalView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {

            // Modal content
            VStack {
                Text("This is a beautiful modal view.")
                .font(.avenir(.heavy,size: Constants.fontLarge))
                    .foregroundColor(Color.iWhite)
                    .padding(.horizontal, 30.0)
                    .padding(.vertical, 10.0)



                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Close")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding()
                }
            }
            .background(Color.iPurple)
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
