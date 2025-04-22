//
//  NewsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

public struct NewsView: View {

    @ObservedObject private var mainViewModel: MainViewModel

    init(_ mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }

    public var body: some View {
        NavigationView {
            if mainViewModel.didPressButton {
                Group {
                    if mainViewModel.isLoading {
                        ProgressView("Loading...")
                    } else if let errorMessage = mainViewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .padding()
                    } else if let gNews = mainViewModel.gNews {
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
                    await mainViewModel.fetchNews()
                }
            } else {
                Text("Waiting for Button Press...")
            }
        }
    }
}
