//
//  UsersView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 06/04/23.
//

import SwiftUI

struct UsersView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Pavan")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("pfst")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
