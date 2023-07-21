//
//  LoginView.swift
//  swiftui-starter
//
//  Created by harisa ginting on 20/07/23.
//

import SwiftUI

struct LoginResponse: Codable {
  let token: String
}

struct LoginView: View {
  @State private var username: String = ""
  @State private var password: String = ""
  @State private var showAlert: Bool = false
  @State private var alertMessage: String = ""
  @State var showPassword: Bool = false
  @State private var isModalTerm = false
  var body: some View {
    VStack (alignment: .center, spacing: 1){
      Spacer()
      Image("LogoMeditap")
      TextField("Username", text: $username)
        .padding()
        .textFieldStyle(RoundedBorderTextFieldStyle())

      HStack {
        Group {
          if showPassword {
            TextField("Password",
                      text: $password,
                      prompt: Text("Password").foregroundColor(.red))
          } else {
            SecureField("Password",
                        text: $password,
                        prompt: Text("Password"))
          }
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        Button {
          showPassword.toggle()
        }
      label: {
        Image(systemName: showPassword ? "eye.slash" : "eye")
      }
      }
      .padding()
      Text("Reset Password")
        .frame(maxWidth: .infinity, alignment: .trailing)



      RoundedButton(text: "LOG IN",
                    isFilled: true,
                    isStroked: false) {
        login()
      }
      Spacer()
    }
    .padding()
    .alert(isPresented: $showAlert) {
      Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
    }
  }

  func login() {
    guard let url = URL(string: "https://your-api-url.com/login") else {
      showAlert = true
      alertMessage = "Invalid URL"
      return
    }

    let credentials = ["username": username, "password": password]

    guard let jsonData = try? JSONSerialization.data(withJSONObject: credentials, options: []) else {
      showAlert = true
      alertMessage = "Failed to serialize credentials"
      return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = jsonData
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    URLSession.shared.dataTask(with: request) { data, response, error in
      guard let data = data, let response = response as? HTTPURLResponse else {
        showAlert = true
        alertMessage = "Failed to connect to server"
        return
      }

      if response.statusCode == 200 {
        if let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) {
          // Successful login
          print("Login successful! Token: \(loginResponse.token)")
        } else {
          showAlert = true
          alertMessage = "Failed to parse login response"
        }
      } else {
        showAlert = true
        alertMessage = "Login failed with status code: \(response.statusCode)"
      }
    }.resume()
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
