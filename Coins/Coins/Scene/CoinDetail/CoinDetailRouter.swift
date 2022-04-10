//
//  CoinDetailRouter.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 15.03.2022.
//
//

import UIKit

@objc protocol CoinDetailRoutingLogic {

}

protocol CoinDetailDataPassing {
    var dataStore: CoinDetailDataStore? { get }
}

class CoinDetailRouter: NSObject, CoinDetailRoutingLogic, CoinDetailDataPassing {
    weak var viewController: CoinDetailViewController?
    var dataStore: CoinDetailDataStore?    
}
