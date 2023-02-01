//
//  Crypto.swift
//  MVP Example
//
//  Created by Azik on 01.02.2023.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 50000),
        Crypto(name: "Etherium", ticker: "ETH", value: 3000),
        Crypto(name: "Ripple", ticker: "XRP", value: 550),
        Crypto(name: "Stellar", ticker: "XLM", value: 20),
        Crypto(name: "Algorand", ticker: "ALGO", value: 2)
    ]
}
