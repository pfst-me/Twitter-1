//
//  SideMenuView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 06/04/23.
//

import SwiftUI

struct SideMenuView: View {
    //let viewModel: SideMenuViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Pavan Naik")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
                
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SidemenuRowView(viewModel: viewModel)
                    }
                }
                else if (viewModel == .logout) {
                    Button {
                        print("Handle logout here...")
                    } label: {
                        SidemenuRowView(viewModel: viewModel)
                    }
                }
                else {
                    SidemenuRowView(viewModel: viewModel)
                }
    
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
