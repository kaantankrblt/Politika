//
//  RegistrationView.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 25.10.2023.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // Spacer()
            
            Image(systemName: "hands.and.sparkles")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding(.bottom, 64)
                .padding(.top, 42)
                .foregroundStyle(.primary)
            // Spacer()
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .modifier(PolitikaTextFieldModifier())
                   
                SecureField("Enter your password", text: $viewModel.password)
                    .disableAutocorrection(true)
                    .modifier(PolitikaTextFieldModifier())
                    
                TextField("Enter your fullname", text: $viewModel.fullname)
                    .disableAutocorrection(true)
                    .modifier(PolitikaTextFieldModifier())
                    
                TextField("Enter your username", text: $viewModel.username)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .modifier(PolitikaTextFieldModifier())
                
                Picker("Gender", selection: $viewModel.gender) {
                    Text("male").tag(Gender.male)
                    Text("female").tag(Gender.female)
                }
                .pickerStyle(SegmentedPickerStyle())
                .modifier(PolitikaTextFieldModifier())
                    
                HStack {
                    Text("Choose your country")
                        .font(.subheadline)
                        .fontWeight(.thin)
                    
                    Spacer()
                    
                    Picker("Country", selection: $viewModel.country) {
                        Text("Turkey").tag(Country.turkey)
                        Text("Korea").tag(Country.korea)
                        Text("USA").tag(Country.usa)
                    }
                    .tint(.primary)
                }
                .modifier(PolitikaTextFieldModifier())
            }
            Spacer()
                
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.teal)
                    .clipShape(.rect(cornerRadius: 8))
            }
            .padding(.vertical)
                
            Spacer()
                
            Divider()
                
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                        .foregroundStyle(.primary)
                        
                    Text("Sign In")
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

#Preview {
    RegistrationView()
}
