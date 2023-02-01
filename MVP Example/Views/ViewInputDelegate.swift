//
//  ViewInputDelegate.swift
//  MVP Example
//
//  Created by Azik on 01.02.2023.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
