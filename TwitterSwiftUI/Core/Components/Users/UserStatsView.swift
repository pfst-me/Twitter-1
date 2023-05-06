//
//  UserStatsView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 06/04/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("960")
                    .font(.headline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.headline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
