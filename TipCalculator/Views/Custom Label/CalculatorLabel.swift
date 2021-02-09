//
//  CalculatorLabel.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import UIKit

class CalculatorLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontColor()
    }
    
    func updateFontColor() {
        self.textColor = UIColor.obsidian
    }    
}//End of Class

