//
//  ViewController.swift
//  MVP Example
//
//  Created by Azik on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var tickerLabel: UILabel!
    @IBOutlet private weak var valueLabel: UILabel!
    
    private var testData: [Crypto] = []
    private let presenter = Presenter()
    weak private var viewOutputDelegate: ViewOutputDelegate?

    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }
    
    @IBAction func buttonPressed(_ sender:Any){
        self.viewOutputDelegate?.getRandomCount()
    }


}

extension ViewController : ViewInputDelegate {
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count-1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("Error")
        }
    }
    
    
}
