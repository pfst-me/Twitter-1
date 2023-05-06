//
//  SidemenuRowView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 08/04/23.
//

import SwiftUI

struct SidemenuRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SidemenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SidemenuRowView(viewModel: .logout)
    }
}
