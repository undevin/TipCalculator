//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var billAmountTextField: CalculatorTextField!
    @IBOutlet weak var numberOfPeopleTextField: CalculatorTextField!
    @IBOutlet weak var tipAmountLabel: CalculatorLabel!
    @IBOutlet weak var fifteenPercentButton: CalculatorButton!
    @IBOutlet weak var twentyPercentButton: CalculatorButton!
    @IBOutlet weak var twentyFivePercentButton: CalculatorButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Properties
    var tipAmount: Float = 0.0
    
    // MARK: - Actions
    @IBAction func fifteenPercentButtonTapped(_ sender: CalculatorButton) {
        self.fifteenPercentButton.backgroundColor = .mainGreen
        self.twentyPercentButton.backgroundColor = .secondaryGreen
        self.twentyFivePercentButton.backgroundColor = .secondaryGreen
        tipAmount = 0.15
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: CalculatorButton) {
        self.fifteenPercentButton.backgroundColor = .secondaryGreen
        self.twentyPercentButton.backgroundColor = .mainGreen
        self.twentyFivePercentButton.backgroundColor = .secondaryGreen
        tipAmount = 0.20
    }
    
    @IBAction func twentyFivePercentButtonTapped(_ sender: CalculatorButton) {
        self.fifteenPercentButton.backgroundColor = .secondaryGreen
        self.twentyPercentButton.backgroundColor = .secondaryGreen
        self.twentyFivePercentButton.backgroundColor = .mainGreen
        tipAmount = 0.25
    }
    
    @IBAction func calculateButtonTapped(_ sender: CalculatorButton) {
        guard let bill = billAmountTextField.text, !bill.isEmpty,
              let people = numberOfPeopleTextField.text, !people.isEmpty else { return }
        let calculatedTotal = calculateTipTotal(billAmount: Float(bill) ?? 0, numOfPeople: Float(people) ?? 0)
        tipAmountLabel.text = String(format: "$%.2f", calculatedTotal)
    }
    
    // MARK: - Functions
    func calculateTipTotal(billAmount: Float, numOfPeople: Float) -> Float {
        let tip = (billAmount * tipAmount) / numOfPeople
        return tip
    }
    
    func setupView() {
        self.view.backgroundColor = .tan
    }
}//End of Class
