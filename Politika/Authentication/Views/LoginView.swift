//
//  LoginView.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 25.10.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Image(systemName: "hands.and.sparkles")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                    .padding(.bottom, 16)

                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .modifier(PolitikaTextFieldModifier())

                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(PolitikaTextFieldModifier())
                }

                NavigationLink {
                    Text("Forget password")
                } label: {
                    Text("Forget Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                Button {
                    Task { try await viewModel.login() }
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.teal)
                        .clipShape(.rect(cornerRadius: 8))
                }

                Spacer()

                Divider()

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Dont have an account?")

                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundStyle(.blue)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
