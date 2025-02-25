//
//  ProfileHeaderView.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 2.11.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                // fullname and username
                VStack(alignment: .leading, spacing: 4) {
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                    
                Text(user?.bio ?? "Test bio")
                    .font(.footnote)
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
                
            Spacer()
                
            CircularProfileImageView(user: user, size: .medium)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
