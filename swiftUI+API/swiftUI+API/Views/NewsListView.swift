//
//  NewsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

public struct NewsListView: View {

    @ObservedObject private var mainViewModel: MainViewModel
    @Environment(Router.self) var router

    init(_ mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }

    public var body: some View {
        VStack {
            Group {
                if mainViewModel.isLoading {
                    Spacer()
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
            Spacer()
            Button("Back to Menu") {
                Task {
                    mainViewModel.isNewsView = false
                    router.navigateToFormsView()
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
