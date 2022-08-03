//
//  ViewController.swift
//  XCTestPOC
//
//  Created by Roberth Diorges on 30/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultTextLabel: UILabel!
    
    let maximumNumber = 1000000
    
    lazy var testData: [Int] = {
        return (0..<maximumNumber).map { Int($0) }
    }()
    
    var evenNumbers = [Int]()
    var colors = ["Vermelho", "Laranja", "Amarelo", "Verde", "Azul"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateEvenNumber()
    }
    
    @IBAction func generateNumberButtonPressed(_ sender: UIButton) {
        resultTextLabel.text = generateRandonNumber()
    }
    
    @IBAction func generateColorButtonPressed(_ sender: UIButton) {
        resultTextLabel.text = generateRandonColor()
    }
    
    func generateRandonColor() -> String? {
        return colors.randomElement() ?? nil
    }
    
    func generateRandonNumber() -> String {
        guard let randomNumber = evenNumbers.randomElement() else { return "" }
        return String(randomNumber)
    }
    
    func generateEvenNumber() {
        
        //        testData.filter{number in number % 2 == 0}.forEach{ number in evenNumbers.append(number)}
        
        for number in testData {
            if number % 2 == 0 {
                evenNumbers.append(number)
            }
        }
    }
}

