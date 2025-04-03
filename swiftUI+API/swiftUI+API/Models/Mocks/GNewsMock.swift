//
//  GNewsMock.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

public class GNewsMock {
    
    public static let shared = GNewsMock()
    
    public let gNewsMock: GNews = .init( totalArticles: 3,
                                         articles: [ Article( title: "Nintendo and PlayStation Just Gave Us More Proof The Console Wars Have Gone Extinct",
                 description: "Two PlayStation franchises are making their Nintendo console debut, the latest example of gaming's shift away from traditional console exclusivity.",
                 content: "Two classic PlayStation franchises are showing up on the Nintendo Switch, the latest in a string of examples that prove the days of hoarding IP on a single platform ecosystem are long behind us.\nBoth Patapon and Everybody’s Golf, formerly known as Ho... [3815 chars]",
                 url: "https://www.inverse.com/gaming/nintendo-switch-playstation-games-console-wars-patapon-everybodys-golf-hot-shots-classic",
                 image: "https://imgix.bustle.com/uploads/image/2025/3/27/7a1345f9/patapon-2.jpg?w=1200&h=630&fit=crop&crop=focalpoint&fm=jpg&fp-x=0.5114&fp-y=0.5679",
                 publishedAt: "2025-03-27T17:20:42Z",
                 source: Source(
                     name: "Inverse",
                     url: "https://www.inverse.com"
                 )
             ),
             Article(
                 title: "You can now pause app downloads in iOS 18.4 - why that matters",
                 description: "iOS 18.4 brings a number of helpful little changes to your iPhone, and the added ability to pause app downloads is a good example of that.",
                 content: "Not every iOS 18 addition has to be monumental to be useful. An new capability in iOS 18.4 that gives you greater control over App Store downloads proves that.\nSpecifically, the release candidate version of the iOS 18.4 beta features the ability to p... [5238 chars]",
                 url: "https://www.tomsguide.com/phones/iphones/you-can-now-pause-app-downloads-in-ios-18-4-why-that-matters",
                 image: "https://cdn.mos.cms.futurecdn.net/3q9SweXzQDGKYmvT9KsDLX-1200-80.jpg",
                 publishedAt: "2025-03-27T07:30:00Z",
                 source: Source(
                     name: "Tom's Guide",
                     url: "https://www.tomsguide.com"
                 )
             ),
             Article(
                 title: "To chase or not to chase? Trading this comeback rally using this energy stock as an example",
                 description: "Frank Cappelleri breaks down the stock charts on Diamondback energy.",
                 content: "Buying strength works best when a stock is breaking out from a bullish chart pattern and is already in an established long-term uptrend. That uptrend can be as simple as a stock trading above a rising 200-day moving average. We've seen that combinati... [4682 chars]",
                 url: "https://www.cnbc.com/2025/03/26/to-chase-or-not-to-chase-trading-this-comeback-rally-using-this-energy-stock-as-an-example.html",
                 image: "https://image.cnbcfm.com/api/v1/image/108121557-17430037792025-03-26t154159z_1722546577_rc22ldawdhsg_rtrmadp_0_usa-stocks.jpeg?v=1743003877&w=1920&h=1080",
                 publishedAt: "2025-03-26T16:48:33Z",
                 source: Source(
                     name: "CNBC",
                     url: "https://www.cnbc.com"
                 )
             )
         ]
     )
}
