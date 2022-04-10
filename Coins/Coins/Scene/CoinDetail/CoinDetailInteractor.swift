//
//  CoinDetailInteractor.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 15.03.2022.
//
//

import UIKit

protocol CoinDetailInteracting {
    func coinDetail(request: CoinDetail.SetUp.Request)
}

protocol CoinDetailDataStore {
    var displayCoin: CoinDetail.SetUp.ViewModel.DisplayCoin? {get set}
}

class CoinDetailInteractor: CoinDetailInteracting, CoinDetailDataStore {
    var presenter: CoinDetailPresentationLogic?
    var worker: CoinDetailWorker?
    var displayCoin: CoinDetail.SetUp.ViewModel.DisplayCoin?
    
    func coinDetail(request: CoinDetail.SetUp.Request) {
        guard let displayCoin = displayCoin else {
            return
        }
        let viewModel = CoinDetail.SetUp.ViewModel(displayCoin: displayCoin)
        presenter?.presentCoinDetail(viewModel: viewModel)
    }
}
