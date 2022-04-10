//
//  CoinDetailPresenter.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 15.03.2022.
//  
//

import UIKit

protocol CoinDetailPresentationLogic {
    func presentCoinDetail(viewModel: CoinDetail.SetUp.ViewModel)
}

class CoinDetailPresenter {
    var viewController: CoinDetailViewController?
}

extension CoinDetailPresenter: CoinDetailPresentationLogic {
   
    func presentCoinDetail(viewModel: CoinDetail.SetUp.ViewModel) {
        viewController?.displayCoinDetail(viewModel: viewModel)
    }
}
