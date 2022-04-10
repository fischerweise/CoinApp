//
//  CoinDetailModels.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 16.03.2022.
//
//

import UIKit

enum CoinDetail {
    enum SetUp {
        struct Request {
        }
        struct Response {
        }
        struct ViewModel {
            struct DisplayCoin {
                let uuid: String
                let symbol: String
                let name: String
                let color: String?
                let iconUrl: String
                let marketCap, price: String
                let listedAt, tier: Int
                let change: String
                let rank: Int
                let sparkline: [String]
                let lowVolume: Bool
                let coinrankingUrl: String
                let the24HVolume: String
                let btcPrice: String
            }
            var displayCoin: DisplayCoin
             
        }
    }
}
