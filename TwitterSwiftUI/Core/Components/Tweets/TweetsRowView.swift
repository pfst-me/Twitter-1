//
//  TweetsRowView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 19/02/23.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment:.leading) {
            //profile image + user info
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info and tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    
                    //user info
                    HStack {
                        Text("Pavan Naik")
                            .font(.subheadline)
                            .bold()
                        Text("@naikpavan56")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //Tweet caption
                    Text("Batman has no limit.")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                }
            }
            //action button
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding(10.0)
            .foregroundColor(.gray)
            
            Divider();
        }
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
