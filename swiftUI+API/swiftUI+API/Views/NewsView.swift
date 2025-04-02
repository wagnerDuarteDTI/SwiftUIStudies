//
//  NewsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

public struct NewsView: View {

    @StateObject private var newsViewModel = NewsViewModel()

    public var body: some View {
        NavigationView {
            Group {
                if newsViewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = newsViewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                } else if let gNews = newsViewModel.gNews {
                    List(gNews.articles, id: \.title) { article in
                        VStack(alignment: .leading) {
                            Text(article.title)
                                .font(.headline)
                            Text(article.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                } else {
                    Text("No Available News!")
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("GNews")
            .task {
                await newsViewModel.fetchNews()
            }
        }
    }
}
