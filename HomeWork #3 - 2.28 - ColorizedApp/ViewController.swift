//
//  ViewController.swift
//  HomeWork #3 - 2.28 - ColorizedApp
//
//  Created by igor s on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var resultView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor()
        resultView.layer.cornerRadius = 30
    }
    
    //MARK: - IB Actions
    @IBAction func slidersAction(_ sender: UISlider) {
        changeColor()
    }
    
    //MARK: - Private Methods
    private func changeColor() {
        resultView.backgroundColor = UIColor(
            red: CGFloat( redSlider.value ),
            green: CGFloat( greenSlider.value ),
            blue: CGFloat( blueSlider.value ),
            alpha: 1
        )
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }

}

