//
//  CoinListInteractor.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 14.03.2022.
//

import UIKit

protocol SelectSortTypeProtocol {
    func selectSortType(sortType: SortType)
}

protocol CoinListInteracting {
    func getCoinList(request: CoinListModel.SetUp.Request)
    func getCoinDetail()
}

extension CoinListInteracting {
    func getCoinList(request: CoinListModel.SetUp.Request) {}
    func getCoinDetail() {}
}

protocol CoinListDataStore {
    var coinList: [Coin] {get set}
}

class CoinListInteractor: CoinListDataStore {
    var presenter: CoinListPresenting?
    var worker:CoinListDataProvidable = CoinListWorker()
    var coinList: [Coin] = [Coin]()
    var selectedCoin: CoinListModel.SetUp.ViewModel.DisplayCoin!
    var sortType: String?
}

extension CoinListInteractor: CoinListInteracting {
    func getCoinList(request: CoinListModel.SetUp.Request) {
        worker.getCoinList { result in
            switch result {
            case .success(let data):
                let list: [Coin] = data
                self.coinList = list
                self.presenter?.presentGetCoinList(response: CoinListModel.SetUp.Response.init(isSuccess: true, list: list))
            case .failure(_):
                self.presenter?.presentGetCoinList(response: CoinListModel.SetUp.Response.init(isSuccess: false, list: []))
                break
            }
        }
    } 
}

