//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by pavan naik on 19/02/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewtweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { count in
                        TweetsRowView()
                    }
                }
                .padding()
            }
            
            Button {
                showNewtweetView.toggle()
            } label: {
                Image(systemName: "pencil.line")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewtweetView) {
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
