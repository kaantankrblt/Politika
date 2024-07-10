//
//  EditProfileView.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 26.10.2023.
//

import PhotosUI
import SwiftUI

struct EditProfileView: View {
    let user: User
    @StateObject var viewModel = EditProfileViewModel()
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])

                VStack {
                    // name and profie image
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)

                            Text(user.fullname)
                        }

                        Spacer()

                        PhotosPicker(selection: $viewModel.selectedItem) {
                            if let image = viewModel.profileImage {
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(.circle)
                            } else {
                                CircularProfileImageView(user: user, size: .small)
                            }
                        }
                    }

                    Divider()

                    // bio field

                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)

                        TextField("Enter your new bio...", text: $bio, axis: .vertical)
                            .disableAutocorrection(true)
                    }

                    Divider()

                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)

                        TextField("Add link...", text: $link)
                    }
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), style: .init(lineWidth: 1))
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.primary)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        Task {
                            try await viewModel.updateUserData(bio: bio)
                            dismiss()
                        }
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                }
            }
        }
    }
}

struct editProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: dev.user)
    }
}
